import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/core/data/extensions.dart';
import 'package:pits_app/core/data/singletons/storage.dart';
import 'package:pits_app/modules/home/domain/entity/service_single_entity.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile/widgets/profile_menu_tile.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/profile_service_screen.dart';

import '../../../../../base/custom_aler_dialog.dart';
import '../../../../auth/presentation/sections/auth_screen/auth_screen.dart';
import '../../../../navigation/presentation/navigator.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15 + MediaQuery.of(context).padding.top,
              ),
              Row(
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
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                        Text(
                          'Eddie Lake',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  fontWeight: FontWeight.w400, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SvgPicture.asset(
                    AppIcons.logOut,
                    width: 32,
                    height: 32,
                  ).onTap(() =>
                      showCustomAlertDialog(
                          context,
                          "Logout",
                          "¿Estás seguro que deseas cerrar la sesión?",
                          () {
                            StorageRepository.logout();
                            Navigator.of(context, rootNavigator: true).pop();
                            Navigator.of(context, rootNavigator: true).pushReplacement(
                                fade(page: const AuthScreen())
                            );
                          },
                          () {
                              Navigator.of(context, rootNavigator: true).pop();
                          }
                      )
                  )
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Image.asset(
                        AppImages.orderSample,
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Eddie Lake',
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge!
                        .copyWith(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              
              ProfileMenuTile(title: 'Profile', icon: AppIcons.userCircle, onTap: (){

                Navigator.push(context, CupertinoPageRoute(builder: (c)=>ProfileServiceScreen(entity: ServiceSingleEntity(),)));
              }),
              SizedBox(height: 8,),
              ProfileMenuTile(title: 'My car', icon: AppIcons.myCar, onTap: (){}),
              SizedBox(height: 8,),
              ProfileMenuTile(title: 'Order history', icon: AppIcons.document, onTap: (){}),
              SizedBox(height: 8,),
              ProfileMenuTile(title: 'Document', icon: AppIcons.files, onTap: (){}),
              SizedBox(height: 8,),
              ProfileMenuTile(title: 'Refer & earn', icon: AppIcons.gift, onTap: (){}),
              SizedBox(height: 8,),
              ProfileMenuTile(title: 'Feedback', icon: AppIcons.chatCircle, onTap: (){}),

            ],
          ),
        ),
      );
}
