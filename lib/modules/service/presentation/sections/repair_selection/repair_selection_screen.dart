import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/parts/axis_selector.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/parts/car_selector.dart';
import 'package:pits_app/modules/service/presentation/sections/repair_selection/parts/other_axis_selector.dart';

import '../../../../../utils/utils.dart';
import 'bloc/repair_selection_bloc.dart';
import 'bloc/repair_selection_event.dart';
import 'bloc/repair_selection_state.dart';

class RepairSelectionScreen extends StatefulWidget {
  const RepairSelectionScreen({
    Key? key,
    this.carNumber,
    required this.takeCarAccount,
    required this.services,
  }) : super(key: key);

  final String? carNumber;
  final String takeCarAccount;
  final Set<String> services;

  @override
  State<RepairSelectionScreen> createState() => _RepairSelectionScreenState();
}

class _RepairSelectionScreenState extends State<RepairSelectionScreen> {
  final commentController = TextEditingController();

  @override
  void dispose() {
    commentController.dispose();
    super.dispose();
  }

  List<String> _parts = [];
  List<String> _axis1 = [];
  List<String> _axis2 = [];

  @override
  Widget build(
    BuildContext context,
  ) => BlocConsumer<RepairSelectionBloc, RepairSelectionState>(
    listener: (context, state) {
      RepairSelectionBloc bloc = context.read<RepairSelectionBloc>();
      state.maybeWhen(
        permissionsGranted: () {
          debugPrint("permissionsGranted");
          //_showPickPhotoSheet();
          bloc.add(
            const RepairSelectionEvent.onPhotoSelected(ImageSource.camera),
          );
        },
        error: (String message) {
          Utils.flushBarErrorMessage(message, context);
          context.read<RepairSelectionBloc>().add(
            const RepairSelectionEvent.cleared(),
          );
        },
        permissionsDenied: (String message) {
          debugPrint("permissionsDenied: $message");
          Utils.flushBarErrorMessage(message, context);
          context.read<RepairSelectionBloc>().add(
            const RepairSelectionEvent.cleared(),
          );
        },
        successSendRequest: () {
          context.read<RepairSelectionBloc>().add(const RepairSelectionEvent.cleared());
          debugPrint('success send repair request');
          /*if(mounted) {
            Utils.flushBarErrorMessage(
                "El coche está matriculado", context, color: greenAccent);
          }*/
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              Navigator.of(context)
                ..pop()
                ..pop()
                ..pop();
              //widget.onRegSuccess?.call();
            }
          });
        },
        orElse: () {},
      );
    },
    builder: (context, state) {
      final bloc = context.read<RepairSelectionBloc>();
      return Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 13 + MediaQuery.of(context).padding.top),
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    AppIcons.arrowLeft,
                    width: 24,
                    height: 24,
                    color: mainDark,
                  ),
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Selección de piezas de automóvil',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'Además, es posible agregar fotografías de partes rotas del coche.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.displayLarge!
                              .copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                // Container(
                //     margin: const EdgeInsets.symmetric(horizontal: 16),
                //     child: Image.asset(
                //       AppImages.carSelection2,
                //       fit: BoxFit.cover,
                //       width: double.maxFinite,
                //     )
                //   // child: SvgPicture.asset(
                //   //     AppImages.imgCar,
                //   //     fit: BoxFit.cover,
                //   //     width: double.maxFinite,
                //   // ),
                // ),
                CarSelector(
                  callbackSelected: (selected) {
                    _parts = selected;
                  },
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ejes',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                AxisSelector(title: 'Eje 1', isAxis1: true, callbackSelected: (selected) {
                  _axis1 = selected;
                }),
                const SizedBox(height: 24),
                AxisSelector(title: 'Eje 2', isAxis1: false, callbackSelected: (selected) {
                  _axis2 = selected;
                }),
                const SizedBox(height: 24),
                const OtherAxisSelector(),
                const SizedBox(height: 40),
                WButton(
                  color: Colors.transparent,
                  height: 72,
                  onTap: () {
                    bloc.add(const RepairSelectionEvent.permissionsRequested());
                  },
                  isDisabled: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  border: Border.all(color: mainDark),
                  borderRadius: 4,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppIcons.plusCircle,
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          fit: FlexFit.loose,
                          child: Text(
                            state.maybeWhen(
                              success: (photo) =>
                                  photo?.fileName ?? 'Añadir foto',
                              orElse: () => 'Añadir foto',
                            ),
                            style: Theme.of(context).textTheme.displayLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Añadir comentarios',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                WTextField(
                  fillColor: fieldGrey,
                  controller: commentController,
                  onChanged: (text) {},
                  keyBoardType: TextInputType.multiline,
                  maxLines: 10,
                  hintText: 'Escribir aquí...',
                ),
                const SizedBox(height: 16),
                /* WButton(
                      border: Border.all(color: black),
                      borderRadius: 4,
                      onTap: () {},
                      height: 55,
                      color: white,
                      text: 'Añadir comentario',
                      textColor: black,
                    ),*/
                const SizedBox(height: 16),
                WButton(
                  margin: EdgeInsets.only(
                    bottom: 24 + MediaQuery.of(context).padding.bottom,
                  ),
                  borderRadius: 4,
                  isLoading: state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  ),
                  onTap: () {
                    bloc.add(
                      RepairSelectionEvent.sendRepairRequest(
                        widget.carNumber,
                        widget.takeCarAccount,
                        widget.services,
                        _parts,
                        _axis1,
                        _axis2,
                        bloc.photo?.fileName,
                        commentController.text,
                        null,//wpServiceId
                      ),
                    );
                  },
                  height: 55,
                  color: black,
                  text: 'Enviar solicitud',
                  textColor: white,
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
