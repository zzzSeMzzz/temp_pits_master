import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/base/try_again_widget.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/modules/home/domain/entity/service_single_entity.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/bloc/profile_bloc.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/bloc/profile_event.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/widgets/profile_menu_tile.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/profile_service_screen.dart';
import '../../../../../base/custom_aler_dialog.dart';
import '../../../../auth/presentation/sections/auth_screen/auth_screen.dart';
import '../../../../navigation/presentation/navigator.dart';
import 'bloc/profile_state.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: BlocProvider(
          create: (context) => ProfileBloc(),
          child: BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              final bloc = BlocProvider.of<ProfileBloc>(context);
              return state.maybeWhen(
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (user) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        _buildHeader(context, user.fullName()),
                        const SizedBox(height: 12),
                        _buildAvatar(context, user.fullName()),
                        const SizedBox(height: 24),
                        _buildMenuTiles(context),
                      ],
                    ),
                  );
                },
                error: (message) => Center(
                  child: TryAgainWidget(
                    onTap: () {
                      bloc.add(const ProfileEvent.load());
                    },
                  )
                ),
                orElse: () => const SizedBox.shrink(),
              );
      
            },
          ),
        ),
      ),
    );
  }



  Widget _buildHeader(BuildContext context, String userName) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, customer',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Text(
                userName,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
              ),
            ],
          ),
        ),
        const SizedBox(width: 15),
        SvgPicture.asset(
          AppIcons.logOut,
          width: 32,
          height: 32,
        ).onTap(() {
          showCustomAlertDialog(
            context,
            "Logout",
            "¿Estás seguro que deseas cerrar la sesión?",
            () {
              StorageRepository.logout();
              Navigator.of(context, rootNavigator: true).pop();
              Navigator.of(context, rootNavigator: true).pushReplacement(
                fade(page: const AuthScreen()),
              );
            },
            () {
              Navigator.of(context, rootNavigator: true).pop();
            },
          );
        }),
      ],
    );
  }

  Widget _buildAvatar(BuildContext context, String userName) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 50,
            child: ClipOval(
              child: Image.asset(
                AppImages.orderSample,
                width: 100,
                height: 100,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Text(userName, style: context.textTheme.displayLarge!.copyWith(fontSize: 24))
        ],
      ),
    );
  }

  Widget _buildMenuTiles(BuildContext context) {
    return Column(
      children: [
        ProfileMenuTile(
          title: 'Profile',
          icon: AppIcons.userCircle,
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (c) => const ProfileServiceScreen(entity: ServiceSingleEntity()),
              ),
            );
          },
        ),
        const SizedBox(height: 8),
        ProfileMenuTile(title: 'My car', icon: AppIcons.myCar, onTap: () {}),
        const SizedBox(height: 8),
        ProfileMenuTile(title: 'Order history', icon: AppIcons.document, onTap: () {}),
        const SizedBox(height: 8),
        ProfileMenuTile(title: 'Document', icon: AppIcons.files, onTap: () {}),
        const SizedBox(height: 8),
        ProfileMenuTile(title: 'Refer & earn', icon: AppIcons.gift, onTap: () {}),
        const SizedBox(height: 8),
        ProfileMenuTile(title: 'Feedback', icon: AppIcons.chatCircle, onTap: () {}),
      ],
    );
  }
}