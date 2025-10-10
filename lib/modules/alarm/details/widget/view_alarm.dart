import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_event.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_state.dart';
import 'package:pits_app/modules/alarm/details/data/model/insurers.dart';
import 'package:pits_app/modules/alarm/details/data/model/workshop.dart';
import '../../../../assets/colors/colors.dart';
import '../../../../base/blur_container.dart';
import '../bloc/alarm_view_bloc.dart';



void showAlarmViewAlertDialog(
    BuildContext context,
    LatLng position) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.symmetric(horizontal: 10.0), // Отступы по бокам
          contentPadding: const EdgeInsets.only(top: 50), // Убираем внутренние отступы
          content: SizedBox(
            width: MediaQuery.of(context).size.width - 10, // Ширина экрана минус отступы
            child: Builder(
                builder: (BuildContext context) {
                  return BlocProvider(
                    create: (context) => AlarmViewBloc(),
                    child: ViewAlarm(position: position),
                  );
                }
            ),
          ),
        );
      }
  );
}


class ViewAlarm extends StatefulWidget {
  const ViewAlarm({super.key, required this.position});

  final LatLng position;

  @override
  State<ViewAlarm> createState() => _ViewAlarmState();
}

class _ViewAlarmState extends State<ViewAlarm> {

  //late final PageController controllerInsures, controllerWorkShops;

  @override
  void initState() {
    super.initState();
    // Вызываем после того как виджет полностью инициализирован
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AlarmViewBloc>().add(AlarmViewEvent.load(widget.position));
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: BlurredContainerDemo(child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
                child: Row(
                  children: [
                    SvgPicture.asset(AppIcons.icAlertBig),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "colócate en un lugar seguro fuera de la vía, enciende las luces de emergencia y usa el chaleco reflectante.".toUpperCase(),
                        style: const TextStyle(color: primaryColor, fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              )),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: BlocBuilder<AlarmViewBloc, AlarmViewState>(
                  builder: (context, state) {
                  return Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.icCheckCircleFrame),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sutiación de emergencia", style: context.textTheme.bodyLarge),
                              Text("Falle de frenos", style: context.textTheme.displayLarge),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: const BoxDecoration(
                          color: fieldGrey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("00:45:13", style: context.textTheme.displayLarge!.copyWith(fontSize: 24)),
                                  Text("Incidencia en curso", style: context.textTheme.bodyLarge!.copyWith(color: textGrey)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),
                            Container(
                              padding: const EdgeInsets.all(12.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(3),
                                  ),
                                ),
                              child: SvgPicture.asset(AppIcons.icTimer)
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 60,
                        child: state.maybeWhen(
                          error: (message) => Text(message),
                          success: (insures, workshops, pageInsures, pageWorkShop) => PageView(
                            onPageChanged: (newIndex) {
                              context.read<AlarmViewBloc>().add(AlarmViewEvent.setPageInsures(newIndex));
                            },
                            children: insures
                               .map((insures) => _buildInsures(insures))
                              .toList()
                          ),
                          orElse: () => const Center(child: CircularProgressIndicator())
                        ),
                      ),
                      state.maybeWhen(
                          success: (insures, workshops, pageInsures, pageWorkShop) => _buildDots(insures.length, pageInsures),
                          orElse: () => const SizedBox.shrink()
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 60,
                        child: state.maybeWhen(
                            error: (message) => Text(message),
                            success: (insures, workshops, pageInsures, pageWorkShop) => PageView(
                                onPageChanged: (newIndex) {
                                  context.read<AlarmViewBloc>().add(AlarmViewEvent.setPageWorkshops(newIndex));
                                },
                                children: workshops
                                    .map((workshop) => _buildWorkshop(workshop))
                                    .toList()
                            ),
                            orElse: () => const Center(child: CircularProgressIndicator())
                        ),
                      ),
                      state.maybeWhen(
                          success: (insures, workshops, pageInsures, pageWorkShop) => _buildDots(workshops.length, pageWorkShop),
                          orElse: () => const SizedBox.shrink()
                      ),
                      const SizedBox(height: 16),
                      WButton(
                        onTap: () {},
                        color: Colors.red,
                        svgAsset: AppIcons.phone,
                        height: 72,
                        textStyle: context.textTheme.displayMedium,
                        text: "Solicitar Llamada",
                      )
                    ],
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDots(int count, int currentPosition) {
    return count == 0 ? const SizedBox.shrink() : Center(
      child: DotsIndicator(
        dotsCount: count,
        position: currentPosition.toDouble(),
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
    );
  }

  Widget _buildInsures(Insurers item) {
    return Text(item.name ?? "dhdh");
  }

  Widget _buildWorkshop(Workshop item) {
    return Text(item.title ?? "dhdh");
  }

}
