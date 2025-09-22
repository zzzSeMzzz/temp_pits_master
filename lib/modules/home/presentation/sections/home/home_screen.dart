import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/core/data/network/api_response.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/auth_screen.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/bloc/auth_bloc.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/add_card_screen.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/bloc/add_car_bloc.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_state.dart';
import 'package:pits_app/modules/home/presentation/sections/home/parts/appbar.dart';
import 'package:pits_app/modules/home/presentation/sections/home/parts/map_button.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_card.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/service/presentation/sections/part_selection/part_selection_screen.dart';

import '../../../../alarm/widgets/alarm_screen.dart';
import '../../../../car/presentation/sections/add_car/bloc/add_car_state.dart';
import '../../../domain/usecase/get_services.dart';
import '../map_page/bloc/services_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _buildContentByState(BuildContext context, HomeState state) {
    return state.maybeWhen(
      loading: () => const SpinKitThreeBounce(
        color: Colors.black,
        size: 30.0,
      ),
      success: (vehicles) => const CarInfoBox(),
      //error: (message) => const SizedBox(),
      orElse: () => const SizedBox(),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        final bloc = context.read<HomeBloc>();
        return Scaffold(
          backgroundColor: white,
          appBar: const HomeAppBar(),
          body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                _buildContentByState(context, state),
                //const CarInfoBox(),
                const SizedBox(
                  height: 16,
                ),
                WButton(
                  color: Colors.transparent,
                  height: 55,
                  onTap: () {
                    //Navigator.push(context, fade(page: AddCarScreen(isBackButton: true,)));
                    if(!StorageRepository.isAuth()) {
                      final snackBar = SnackBar(
                        content: Text('Please auth before add car', style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                            fontWeight: FontWeight.w500, fontSize: 16),),
                        action: SnackBarAction(
                          textColor: Colors.black,
                          label: 'SignIn',
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true).pushReplacement(
                                fade(page: const AuthScreen())
                            );
                          },
                        ),
                        duration: const Duration(seconds: 3), // Optional: set duration
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      return;
                    }
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                        builder: (_) =>
                            MultiBlocProvider(
                              providers: [
                                BlocProvider(create: (_) => AddCarBloc()),
                              ],
                              child: const AddCarScreen(isBackButton: true),
                            ),
                      ),
                    );
                  },
                  border: Border.all(color: mainDark),
                  borderRadius: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppIcons.plusCircle,
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Añadir vehículo',
                        style: Theme
                            .of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const MapButton(),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        child: WButton(
                          onTap: () {
                            Navigator.push(context,
                                fade(page: const PartSelectionScreen()));
                          },
                          height: 55,
                          svgAsset: AppIcons.plusCircle,
                          borderRadius: 16,
                          textColor: white,
                          text: 'Solicitar Reparación',
                        ),
                      ),
                      SvgPicture.asset(
                        AppIcons.icAlarmButton,
                        fit: BoxFit.fill,
                        width: 96,
                        height: 96,
                      ).onTap(() => showAlarmBottomSheet(context, null))
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
  );
}
