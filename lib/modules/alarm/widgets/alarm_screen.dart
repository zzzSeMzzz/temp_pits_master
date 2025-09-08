import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_bloc.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_event.dart';
import 'package:pits_app/modules/alarm/widgets/problem_type.dart';
import 'package:pits_app/modules/alarm/widgets/selected%20box.dart';

import '../../../assets/colors/colors.dart';
import '../../../assets/constants/app_icons.dart';
import '../../../globals/widgets/interaction/w_button.dart';
import '../bloc/alarm_state.dart';




showAlarmBottomSheet(BuildContext context) {
  showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        final bloc = AlarmBloc();
        return BlocProvider(
          create: (context) => bloc,
          child: AlarmScreen(bloc: bloc),
        );
      }
  );
}

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key, required this.bloc});

  final AlarmBloc bloc;

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

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
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

      widget.bloc.add(AlarmEvent.setPage(currentPage));
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



  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AlarmBloc, AlarmState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                                child: _buildAlarms(_alarmProblems, widget.bloc, _scrollController),
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
                                  widget.bloc.add(const AlarmEvent.setStartEngine(true))
                                },
                                isSelected: state.isStartEngine,
                                title: "Yes",
                                width: 73,
                                height: 56,
                              ),
                              SelectedBox(
                                onTap: () => {
                                  widget.bloc.add(const AlarmEvent.setStartEngine(false))
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
                                  keyboardType: TextInputType.multiline,
                                  minLines: 4,
                                  maxLines: 6,
                                  //focusNode: focusNode,
                                  autofocus: true,
                                  decoration: const InputDecoration(
                                    hintText: 'Explain us more (optionale)',
                                  ),
                                ),
                                WButton(
                                  isLoading: false,//state.isLoading,
                                  height: 72,

                                  onTap: () {},
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
            ),
          );
        }
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
