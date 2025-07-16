import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/map_screen.dart';
import '../../../../domain/usecase/get_services.dart';
import '../../../../domain/usecase/get_single_service.dart';
import '../../map_page/bloc/services_bloc.dart';
import '../../map_page/bloc/single/service_single_bloc.dart';

class MapButton extends StatelessWidget {
  const MapButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(onTap: () {
    //Navigator.of(context,rootNavigator: true).push( fade(page: const MapScreen()));
    Navigator.of(context,rootNavigator: true).push(
      MaterialPageRoute(
        builder: (_) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => ServicesBloc(GetServicesUseCase())),
            BlocProvider(create: (_) => ServiceSingleBloc(getSingle: GetServiceSingleUseCase())),
          ],
          child: const MapScreen(),
        ),
      ),
    );
  },
    child: SizedBox(
          height: 170,
          child: Stack(
            children: [
              Positioned.fill(
                  child: Image.asset(AppImages.mapTest,fit: BoxFit.cover,)),
              Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4), color: white),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          AppIcons.map,
                          width: 24,
                          height: 24,
                          color: primaryColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'To show on the map',
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          AppIcons.iArrowRight,
                          width: 24,
                          height: 24,
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
  );
}
