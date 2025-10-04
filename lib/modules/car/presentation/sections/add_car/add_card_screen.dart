import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/globals/widgets/interaction/w_button.dart';
import 'package:pits_app/globals/widgets/interaction/w_textfield.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/bloc/add_car_state.dart';
import 'bloc/add_car_bloc.dart';
import 'bloc/add_car_event.dart';
import 'data/model/photo_model.dart';
import 'package:pits_app/utils/utils.dart';

class AddCarScreen extends StatefulWidget {
  final bool isBackButton;
  const AddCarScreen({required this.isBackButton, Key? key}) : super(key: key);

  @override
  State<AddCarScreen> createState() => _AddCarScreenState();
}

class _AddCarScreenState extends State<AddCarScreen> {
  /*late final AddCarBloc _bloc; = AddCarBloc();

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }*/

  void _showPickPhotoSheet() {
    final addCarBloc = context.read<AddCarBloc>();
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('Desde la galería'),
              onTap: () {
                Navigator.of(ctx).pop();
                addCarBloc.add(
                  const AddCarEvent.onPhotoSelected(ImageSource.gallery),
                );
              },
            ),
            ListTile(
              textColor: Colors.black,
              iconColor: Colors.black,
              leading: const Icon(Icons.photo_camera_outlined),
              title: const Text('Toma una foto'),
              onTap: () {
                Navigator.of(ctx).pop();
                addCarBloc.add(
                  const AddCarEvent.onPhotoSelected(ImageSource.camera),
                );
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<AddCarBloc, AddCarState>(
    listener: (context, state) {
      AddCarBloc bloc = context.read<AddCarBloc>();
      state.when(
        permissionsGranted: () {
          debugPrint("permissionsGranted");
          //_showPickPhotoSheet();
          bloc.add(
            const AddCarEvent.onPhotoSelected(ImageSource.camera),
          );
        },
        initial: () {},
        loading: () {},
        success: (PhotoModel photo) {
          debugPrint('success take photo');
        },
        error: (String message) {
          Utils.flushBarErrorMessage(message, context);
          context.read<AddCarBloc>().add(const AddCarEvent.cleared());
        },
        permissionsDenied: (String message) {
          debugPrint("permissionsDenied: $message");
          Utils.flushBarErrorMessage(message, context);
          context.read<AddCarBloc>().add(const AddCarEvent.cleared());
        },
        cleared: () {},
      );
    },
    //child: BlocBuilder<AlarmBloc, AlarmState>(
    builder: (context, state) {
      final bloc = context.read<AddCarBloc>();
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.isBackButton)
                  Container(
                    margin: const EdgeInsets.only(left: 16),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        AppIcons.arrowLeft,
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                SizedBox(height: widget.isBackButton ? 16 : 56),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Conecta con tu vehículo',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.displayLarge!
                            .copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 70),
                Image.asset(
                  AppImages.scanCar,
                  width: double.maxFinite,
                  fit: BoxFit.cover,
                  height: 395,
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Text(
                    'Introduce una matrícula o VIN',
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: WTextField(
                    disabledBorderColor: textGrey,
                    fillColor: white,
                    height: 56,
                    borderColor: textGrey,
                    borderRadius: 16,
                    onTapSuffix: () {
                      bloc.add(
                        const AddCarEvent.permissionsRequested(),
                      );
                    },
                    suffixIcon: AppIcons.icScan2,
                    onChanged: (text) {

                    },
                  ),
                ),
                const SizedBox(height: 24),
                WButton(
                  margin: const EdgeInsets.symmetric(horizontal: 24),
                  onTap: () => bloc.add(
                    const AddCarEvent.permissionsRequested(),//fixme
                  ), //_showPickPhotoSheet(bloc),
                  svgAsset: AppIcons.plusCircle,
                  borderRadius: 16,
                  text: 'Conectar',
                  height: 56,
                  textColor: white,
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 30),
              ],
            ),
          ),
        ),
      );
    },
  );
}
