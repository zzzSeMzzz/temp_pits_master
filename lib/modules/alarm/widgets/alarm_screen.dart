import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_bloc.dart';

import '../../../assets/constants/app_icons.dart';
import '../bloc/alarm_state.dart';




showAlarmBottomSheet(BuildContext context) {
  showModalBottomSheet(
      backgroundColor: Colors.white,
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
  const AlarmScreen({super.key});


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
        listener: (context, state) {

        },
        builder: (context, state) {

          return Container(
           /* height: MediaQuery
                .of(context)
                .size
                .height * 0.5,*/
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text("What happen?",
                              style: context.textTheme.displayLarge!.copyWith(
                            fontSize: 24,
                            fontWeight: FontWeight.w700)
                          ),
                          Text("Select the type of emergency",
                              style: context.textTheme.displayMedium!.copyWith(
                                  fontSize: 14
                              )
                          )
                        ],
                      )
                  )
                ],
              )
            ),
          );
        }
    );
  }
}
