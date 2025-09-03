import 'package:pits_app/assets/constants/app_icons.dart';

class AppConstants {

  AppConstants._();

  static const BASE_URL='https://getpits.com/es/';
  static const BASE_URL_AUTH='https://workshop.getpits.com/';

  //todo переместить в виджет bottomsheet, сделать final
  static const alarmProblems = {
     "Pinchazo" : AppIcons.icWheelPuncture,
     "Perdida de llaves" : AppIcons.icWheelPuncture,//lost key
     "Error al repostar" : AppIcons.icWheelPuncture,// Refueling error
     "Sin gasolina" : AppIcons.icNoFuel,
     "Sin batería" : AppIcons.icWheelPuncture,//No battery
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
}