import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/alarm/details/widget/view_alarm.dart';
import 'package:pits_app/modules/auth/presentation/sections/auth_screen/auth_screen.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/add_card_screen.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/bloc/add_car_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_bloc.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_event.dart';
import 'package:pits_app/modules/home/presentation/sections/home/bloc/home_state.dart';
import 'package:pits_app/modules/home/presentation/sections/home/parts/appbar.dart';
import 'package:pits_app/modules/home/presentation/sections/home/parts/map_button.dart';
import 'package:pits_app/modules/home/presentation/sections/map_page/map_screen.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/service/presentation/sections/part_selection/part_selection_screen.dart';
import '../../../../../assets/constants/app_constants.dart';
import '../../../../alarm/widgets/alarm_screen.dart';
import 'parts/vehicle_page_view.dart' show VehiclePageView;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  PreferredSizeWidget _buildAppBar(BuildContext context, HomeState state) {
    final selectedVehicle = state.maybeWhen(
      selectedVehicle: (vehicle) => vehicle,
      orElse: () => null,
    );
    return HomeAppBar(vehicle: selectedVehicle);
  }

  Widget _buildContentByState(BuildContext context, HomeBloc bloc) {
    return bloc.state.maybeWhen(
      loading: () => const SpinKitThreeBounce(color: Colors.black, size: 30.0),
      success: (vehicles) => VehiclePageView(
        vehicles: vehicles,
        onSelectVehicle: (veh) => bloc.add(HomeEvent.onSelectVehicle(veh)),
      ),
      selectedVehicle: (vehicle) => VehiclePageView(
        vehicles: bloc.vehicles,
        onSelectVehicle: (veh) => bloc.add(HomeEvent.onSelectVehicle(veh)),
      ),
      orElse: () => const SizedBox(),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<HomeBloc, HomeState>(
    listener: (context, state) {},
    builder: (context, state) {
      final bloc = context.read<HomeBloc>();
      return Scaffold(
        backgroundColor: white,
        appBar: _buildAppBar(context, state),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 16),
              _buildContentByState(context, bloc),
              //const CarInfoBox(),
              const SizedBox(height: 16),
              WButton(
                color: Colors.transparent,
                height: 55,
                onTap: () {
                  //Navigator.push(context, fade(page: AddCarScreen(isBackButton: true,)));
                  if (!StorageRepository.isAuth()) {
                    final snackBar = SnackBar(
                      content: Text(
                        'Autorizate antes de añadir un vehículo',
                        style: Theme.of(context).textTheme.displayLarge!
                            .copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                      ),
                      action: SnackBarAction(
                        textColor: Colors.black,
                        label: 'Acceder',
                        onPressed: () {
                          Navigator.of(
                            context,
                            rootNavigator: true,
                          ).pushReplacement(fade(page: const AuthScreen()));
                        },
                      ),
                      duration: const Duration(
                        seconds: 3,
                      ), // Optional: set duration
                    );

                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    return;
                  }
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute(
                      builder: (_) => MultiBlocProvider(
                        providers: [BlocProvider(create: (_) => AddCarBloc())],
                        child: AddCarScreen(isBackButton: true, onRegSuccess: () => bloc.add(const HomeEvent.loadVehicles())),
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
                    const SizedBox(width: 10),
                    Text(
                      'Añadir vehículo',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const MapButton(),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: WButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            fade(page: PartSelectionScreen(currentCarNumber: bloc.currentVehicle?.registrationNumber)),
                          );
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
                    ).onTap(() => showAlarmBottomSheet(context, null, (newAlarm) {
                      showAlarmViewAlertDialog(context, newAlarm);
                    })),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
