import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_bloc.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_event.dart';
import 'package:pits_app/modules/alarm/widgets/problem_type.dart';

import '../../../assets/constants/app_icons.dart';
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

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.hasClients) {
      final double currentOffset = _scrollController.offset;
      final double maxExtent = _scrollController.position.maxScrollExtent;
      final int itemCount = _alarmProblems.length;

      if (maxExtent > 0 && itemCount > 0) {
        // Правильный расчет: определяем, какой элемент сейчас в центре/виден
        const double itemWidth = 76 + 16; // width + margin (8+8)
        final int visibleItemIndex = (currentOffset / itemWidth).round();

        // Ограничиваем индекс в пределах количества dots (4 dots = 4 страницы)
        final int pageIndex = (visibleItemIndex / 4).clamp(0, 3).toInt();

        widget.bloc.add(AlarmEvent.setPage(pageIndex));
      }
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
                              SizedBox(height: 140,
                                child: _buildAlarms(_alarmProblems, widget.bloc, _scrollController),
                              ),
                             //SizedBox(height: 100,)
                              Center(
                                child: DotsIndicator(
                                  dotsCount: 4,
                                  position: state.currentPage.toDouble(),
                                ),
                              )
                            ],
                          ),
                        )
                    )
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
