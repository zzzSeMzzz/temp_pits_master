
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/map_screen.dart';
import '../../../../domain/usecase/get_services.dart';
import '../../../../domain/usecase/get_single_service.dart';
import '../../map_page/bloc/services_bloc.dart';
import '../../map_page/bloc/single/service_single_bloc.dart';

class MapButton extends StatelessWidget {
  const MapButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          Navigator.of(context, rootNavigator: true).push(
            MaterialPageRoute(
              builder: (_) => MultiBlocProvider(
                providers: [
                  BlocProvider(
                      create: (_) => ServicesBloc(GetServicesUseCase())),
                  BlocProvider(
                      create: (_) => ServiceSingleBloc(
                          getSingle: GetServiceSingleUseCase())),
                ],
                child: const MapScreen(),
              ),
            ),
          );
        },
        child: SizedBox(
          width: double.infinity, // на всю ширину
          height: 170,
          child: Image.asset(
            AppImages.mapTest,
            fit: BoxFit.fill,
          ),
        ),
      );
}
