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
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                                child: _buildAlarms(_alarmProblems, widget.bloc),
                              ),
                             //SizedBox(height: 100,)
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


Widget _buildAlarms(Map<String, String> items, AlarmBloc bloc) {
  final entries = items.entries.toList();
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: items.length,
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
