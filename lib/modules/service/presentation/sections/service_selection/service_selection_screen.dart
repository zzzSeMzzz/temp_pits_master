import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/modules/navigation/presentation/navigator.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/repair_selection_screen.dart';
import 'package:pits_app/modules/service/presentation/widgets/selection_box.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../repair_selection/bloc/repair_selection_bloc.dart';
import 'bloc/service_selection_bloc.dart';
import 'bloc/service_selection_state.dart';
import 'bloc/service_selection_event.dart';

class ServiceSelectionScreen extends StatelessWidget {
  const ServiceSelectionScreen({Key? key, this.carNumber, required this.takeCarAccount}) : super(key: key);

  final String? carNumber;
  final String  takeCarAccount;

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) => ServiceSelectionBloc(),
    child: Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: BlocBuilder<ServiceSelectionBloc, ServiceSelectionState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 13),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      AppIcons.arrowLeft,
                      width: 24,
                      height: 24,
                      colorFilter: const ColorFilter.mode(
                        Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Servicios (multiselección)',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: GridView.builder(
                      itemCount: AppIcons.serviceRepairIcons.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 160,
                            childAspectRatio: 1,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                          ),
                      itemBuilder: (context, index) {
                        final repairInfo = AppIcons.serviceRepairIcons.entries
                            .elementAt(index);
                        final selected = state.selectedKeys.contains(
                          repairInfo.key,
                        );
                        return SelectionBox(
                          onTap: () {
                            context.read<ServiceSelectionBloc>().add(
                              ServiceSelectionEvent.toggleService(
                                repairInfo.key,
                              ),
                            );
                          },
                          title: repairInfo.key,
                          svgIcon: repairInfo.value,
                          colorFilter: selected
                              ? const ColorFilter.mode(
                                  primaryColor,
                                  BlendMode.srcIn,
                                )
                              : const ColorFilter.mode(
                                  Colors.black,
                                  BlendMode.srcIn,
                                ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  WButton(
                    onTap: () {
                      Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (_) => MultiBlocProvider(
                            providers: [BlocProvider(create: (_) => RepairSelectionBloc())],
                            child: RepairSelectionScreen(
                              carNumber: carNumber,
                              services: state.selectedKeys,
                              takeCarAccount: takeCarAccount,
                            ),
                          ),
                        ),
                      );
                    },
                    height: 55,
                    borderRadius: 4,
                    textColor: white,
                    text: 'Continue',
                  ),
                  const SizedBox(height: 12),
                ],
              );
            }
          ),
        ),
      ),
    ),
  );
}
