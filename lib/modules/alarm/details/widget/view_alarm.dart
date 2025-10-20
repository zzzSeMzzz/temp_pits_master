import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/base/safe_image.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_event.dart';
import 'package:pits_app/modules/alarm/details/bloc/alarm_view_state.dart';
import 'package:pits_app/modules/alarm/details/data/model/insurers.dart';
import 'package:pits_app/modules/alarm/details/data/model/workshop.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../assets/colors/colors.dart';
import '../../../../assets/constants/app_constants.dart';
import '../../../../base/blur_container.dart';
import '../bloc/alarm_view_bloc.dart';



void showAlarmViewAlertDialog(
    BuildContext context,
    AlarmModel alarm
  ) {
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
                    child: ViewAlarm(alarm: alarm),
                  );
                }
            ),
          ),
        );
      }
  );
}


class ViewAlarm extends StatefulWidget {
  const ViewAlarm({super.key, required this.alarm});

  final AlarmModel alarm;

  @override
  State<ViewAlarm> createState() => _ViewAlarmState();
}

class _ViewAlarmState extends State<ViewAlarm> {

  late final PageController controllerInsures, controllerWorkShops;


  @override
  void initState() {
    super.initState();
    controllerInsures = PageController();
    controllerWorkShops = PageController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AlarmViewBloc>().add(AlarmViewEvent.load(
         widget.alarm.getOrDefault(AppConstants.madridLocation),
         widget.alarm.getTimeStampOrDefault(), // Передаем timestamp
      ));
    });
  }


  @override
  void dispose() {
    super.dispose();
    controllerWorkShops.dispose();
    controllerInsures.dispose();
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
                    final elapsedTime = state.maybeWhen(
                      success: (insures, workshops, pageInsures, pageWorkShop, elapsedTime) => elapsedTime,
                      orElse: () => "00:00:00",
                    );
                  return Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.icCheckCircleFrame),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Situación de emergencia", style: context.textTheme.bodyLarge),

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
                                  Text(elapsedTime, style: context.textTheme.displayLarge!.copyWith(fontSize: 24)),
                                  Text(widget.alarm.emergency ?? "Incidencia en curso", style: context.textTheme.bodyLarge!.copyWith(color: textGrey)),
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
                          success: (insures, workshops, pageInsures, pageWorkShop, elapsedTime) => PageView(
                            controller: controllerInsures,
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
                          success: (insures, workshops, pageInsures, pageWorkShop, elapsedTime) => _buildDots(insures.length, pageInsures, controllerInsures),
                          orElse: () => const SizedBox.shrink()
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 60,
                        child: state.maybeWhen(
                            error: (message) => Text(message),
                            success: (insures, workshops, pageInsures, pageWorkShop, elapsedTime) => PageView(
                                controller: controllerWorkShops,
                                onPageChanged: (newIndex) {
                                  context.read<AlarmViewBloc>().add(AlarmViewEvent.setPageWorkshops(newIndex));
                                },
                                children: workshops
                                    .map((workshop) => _buildWorkshopItem(workshop))
                                    .toList()/*_buildWorkshopPages(workshops)*/
                            ),
                            orElse: () => const Center(child: CircularProgressIndicator())
                        ),
                      ),
                      state.maybeWhen(
                          success: (insures, workshops, pageInsures, pageWorkShop, elapsedTime) {
                            /*final workshopPagesCount = (workshops.length / 2).ceil(); // Округляем вверх
                            return _buildDots(workshopPagesCount, pageWorkShop);*/
                            return _buildDots(workshops.length, pageWorkShop, controllerWorkShops);
                          },
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

 /* Widget _buildDots(int count, int currentPosition) {
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
  }*/

  Future<void> _launchCaller(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: "tel", path: phoneNumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneUri';
    }
  }

   Widget _buildDots(int count, int currentPosition, PageController controller) {
    return count == 0 ? const SizedBox.shrink() : Center(
      child: SmoothPageIndicator(
        controller: controller,
        count: count,
        effect:  const ScrollingDotsEffect(
          activeDotColor: Colors.black,
          activeDotScale: 1.0,
          dotColor: textGrey,
          strokeWidth: 2.0,
          dotWidth: 8.0,
          dotHeight: 8.0,
          spacing: 8.0,
          paintStyle: PaintingStyle.stroke
        ),
      )
    );
  }

  Widget _buildInsures(Insurers item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          SafeNetworkImage(
            url: item.logo,
            fallbackAsset: AppIcons.loader,
            width: 40,
            height: 40,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.name ?? "", style: context.textTheme.displayLarge),
                Text(item.description ?? "", style: context.textTheme.bodyLarge!.copyWith(fontSize: 13)),
              ],
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Color(0xffFFC6C6),
              borderRadius: BorderRadius.all(
                Radius.circular(3),
              ),
            ),
            child: SvgPicture.asset(AppIcons.icPhoneRed, width: 24, height: 24,)
          ).onTap(() => _launchCaller(item.description ?? ""))
        ],
      ),
    );
  }

  Widget _buildWorkshopItem(Workshop item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          /*SafeNetworkImage(
            url: item.logo,
            fallbackAsset: AppIcons.loader,
            width: 40,
            height: 40,
          ),*/
          Image.asset(AppImages.emptyService, width: 40, height: 40,),
          const SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(item.title ?? "", style: context.textTheme.displayLarge),
                Text(item.distanceKm?.toString() ?? "", style: context.textTheme.bodyLarge!.copyWith(fontSize: 13)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //разделение на два элемента
  List<Widget> _buildWorkshopPages(List<Workshop> workshops) {
    final List<Widget> pages = [];

    for (int i = 0; i < workshops.length; i += 2) {
      // Если есть следующий элемент, создаем строку с двумя workshop
      if (i + 1 < workshops.length) {
        pages.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _buildWorkshopItem(workshops[i]),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 1,
                  child: _buildWorkshopItem(workshops[i + 1]),
                ),
              ],
            ),
          ),
        );
      } else {
        // Если элемент последний и нечетный, создаем страницу с одним workshop
        pages.add(
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: _buildWorkshopItem(workshops[i]),
                ),
                const SizedBox(width: 8),
                const Expanded(
                  flex: 1,
                  child: SizedBox(), // Пустое место для выравнивания
                ),
              ],
            ),
          ),
        );
      }
    }

    return pages;
  }

}
