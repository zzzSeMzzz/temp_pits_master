import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/core/data/model/base_response.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_bloc.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_event.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/alarm/widgets/problem_type.dart';
import 'package:pits_app/modules/alarm/widgets/selected%20box.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/app_icons.dart';
import '../../../globals/widgets/interaction/w_button.dart';
import '../bloc/alarm_state.dart';




showAlarmBottomSheet(BuildContext context, LatLng? currentPosition) {
  showModalBottomSheet(
      backgroundColor: Colors.transparent,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return BlocProvider(
          create: (context) => AlarmBloc(),
          child: const AlarmScreen(),
        );
      }
  );
}

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key, this.position});

  final LatLng? position;

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  final int _totalPages = 4;
  late final AlarmBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<AlarmBloc>();
    _scrollController.addListener(_onScroll);
    if(widget.position!=null) {
      _bloc.add(AlarmEvent.setCurrentPosition(widget.position!));
    }
  }

  void _onScroll() {
    if (_scrollController.hasClients) {
      final double currentOffset = _scrollController.offset;
      final double maxScrollExtent = _scrollController.position.maxScrollExtent;

      // Рассчитываем ширину одной "страницы" прокрутки
      final double pageWidth = maxScrollExtent / (_totalPages - 1);

      // Определяем текущую страницу
      int currentPage = (currentOffset / pageWidth).round();

      // Гарантируем, что последняя страница активируется
      if (currentOffset >= maxScrollExtent - pageWidth / 2) {
        currentPage = _totalPages - 1;
      }

      // Ограничиваем диапазон
      currentPage = currentPage.clamp(0, _totalPages - 1);

      _bloc.add(AlarmEvent.setPage(currentPage));
    }
  }


  final _alarmProblems = {
    "Pinchazo" : AppIcons.icWheelPuncture,
    "Perdida de llaves" : AppIcons.icLostKey,
    "Error al repostar" : AppIcons.icErrorFueling,
    "Sin gasolina" : AppIcons.icNoFuel,
    "Sin batería" : AppIcons.icLowBattery,
    "Fallo frenos" : AppIcons.icBrakeFailure,
    "Sin agua en el motor" : AppIcons.icNoWater,
    "Sin cadenas" : AppIcons.icWheelChains,
    "Fallo Turbo" : AppIcons.icTurboFailure,
    "Motor caliente" : AppIcons.icHotEngine,
    "Sin aceite" : AppIcons.icLowOil,
    "Diagnostico " : AppIcons.icCheckDiagnostic,
    "Testigos encendidos " : AppIcons.icCheckEngine,
    "Fusibles " : AppIcons.icCheckFuses,
    "Otro " : AppIcons.icOtherRepair,
  };


  void _showSnack(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Text(
            message,
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontWeight: FontWeight.w400, fontSize: 16, color: Colors.black),
          )),
    );
  }

  Future<bool> _ensureLocationPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _showSnack('Location services are disabled');
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _showSnack('Location permission denied');
        return false;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      _showSnack('Location permission permanently denied');
      return false;
    }

    return true;
  }

  Future<Position?> _getCurrentPosition() async {
    _bloc.add(const AlarmEvent.setLoading());
    try {
      final hasPermission = await _ensureLocationPermission();
      if (!hasPermission) return null;
      return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
    } catch (e) {
      debugPrint('Error getting location: $e');
      if (mounted) {
        _showSnack('Failed to get location');
      }
      _bloc.add(const AlarmEvent.resetState());
      return null;
    }
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AlarmBloc, AlarmState>(
        listener: (context, state) {
          final rState = state.responseState;
          if (rState is Success<BaseResponse>) {
            final message = rState.data.message ?? "Emergency request sent successfully!";
            Navigator.of(context).pop();
            _showSnack(message);
          } else if (rState is Error<BaseResponse>) {
          } else if (rState is Error<BaseResponse>) {
            _showSnack(rState.errorMessage);
            _bloc.add(const AlarmEvent.resetState());
          }
        },
      //child: BlocBuilder<AlarmBloc, AlarmState>(
          builder: (context, state) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                           Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("What happen?",
                                  style: context.textTheme.displayLarge!.copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w700)
                              ),
                              const SizedBox(height: 8),
                              Text("Select the type of emergency",
                                  style: context.textTheme.displayLarge!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14
                                  )
                              ),
                              const SizedBox(height: 10),
                              SizedBox(height: 120,
                                child: _buildAlarms(_alarmProblems, _bloc, _scrollController),
                              ),
                             //SizedBox(height: 100,)
                              Center(
                                child: DotsIndicator(
                                  dotsCount: _totalPages,
                                  position: state.currentPage.toDouble(),
                                  decorator: const DotsDecorator(
                                    size: Size.square(6.0),
                                    activeSize: Size.square(8.0),
                                    shape: CircleBorder(
                                      side: BorderSide(color: textGrey, width: 1),
                                    ),
                                    activeShape: CircleBorder(
                                      side: BorderSide(color: Colors.black, width: 2.0),
                                    ),
                                    color: Colors.transparent, // делаем основной цвет прозрачным
                                    activeColor: Colors.transparent,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                    ),
                    const SizedBox(height: 16,),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Text("Does the\ncar start?",
                                  style: context.textTheme.displayLarge!.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20
                                  )
                              ),
                              const Spacer(),
                              SelectedBox(
                                onTap: () => {
                                  _bloc.add(const AlarmEvent.setStartEngine(true))
                                },
                                isSelected: state.isStartEngine,
                                title: "Yes",
                                width: 73,
                                height: 56,
                              ),
                              SelectedBox(
                                onTap: () => {
                                  _bloc.add(const AlarmEvent.setStartEngine(false))
                                },
                                isSelected: !state.isStartEngine,
                                title: "No",
                                width: 73,
                                height: 56,
                              ),
                            ],
                          )
                        )
                    ),
                    const SizedBox(height: 16),
                    Container(
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                TextField(
                                  controller: _controller,
                                  keyboardType: TextInputType.text,
                                  minLines: 1,
                                  maxLines: 1,
                                  //focusNode: focusNode,
                                  autofocus: false,
                                  decoration: const InputDecoration(
                                    hintText: 'Explain us more (optionale)',
                                    hintStyle: TextStyle(color: Colors.black, fontSize: 16), // Set hint color to black
                                    //border: OutlineInputBorder(), // Optional: Add a border
                                  ),
                                ),
                                const SizedBox(height: 12),
                                WButton(
                                  isLoading: state.responseState is Loading<BaseResponse>,
                                  height: 64,
                                  textStyle: context.textTheme.displayLarge!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    color: Colors.white
                                  ),
                                  svgAsset: AppIcons.icSend,
                                  onTap: () async {
                                    if(state.selectedAlarm==null) {
                                      _showSnack("Select emergency");
                                      return;
                                    }
                                    String formattedDateTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());
                                    AlarmModel alarm;
                                    if(state.currentPosition==null) {
                                      final pos = await _getCurrentPosition();
                                      if(pos==null) return;
                                      alarm = AlarmModel(
                                        carStart: state.isStartEngine,
                                        emergency: state.selectedAlarm!,
                                        notes: _controller.text,
                                        timestamp: formattedDateTime,
                                        lat: pos.latitude,
                                        lon: pos.longitude,
                                      );
                                    } else {
                                      alarm = AlarmModel(
                                        carStart: state.isStartEngine,
                                        emergency: state.selectedAlarm!,
                                        notes: _controller.text,
                                        timestamp: formattedDateTime,
                                        lat: state.currentPosition!.latitude,
                                        lon: state.currentPosition!.longitude,
                                      );
                                    }
                                    _bloc.add(AlarmEvent.sendAlarm(alarm));
                                  },
                                  color: primaryColor,
                                  text: "Submit an emergency request",
                                  textColor: white,
                                )
                              ],
                            )
                        )
                    ),
                  ],
                ),
              ),
            );
          }
      //),
    );
  }
}


Widget _buildAlarms(Map<String, String> items, AlarmBloc bloc, ScrollController controller) {
  final entries = items.entries.toList();
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: items.length,
    controller: controller,
    itemBuilder: (context, index) {
      final entry = entries[index];
      return Container(
        width: 76,
        margin: const EdgeInsets.all(8),
        child: ProblemType(
            name: entry.key,
            image: entry.value,
            isSelected: entry.key == bloc.state.selectedAlarm,
            onSelectAlarm: (alarm) => bloc.add(AlarmEvent.selectAlarm(alarm))
        )
      );
    },
  );
}
