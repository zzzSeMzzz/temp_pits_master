import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pits_app/assets/colors/colors.dart';
import 'package:pits_app/assets/constants/app_icons.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import 'package:pits_app/assets/constants/app_urls.dart';
import 'package:pits_app/modules/home/domain/entity/service_single_entity.dart';
import 'package:pits_app/modules/profile/data/repository/profile.dart';
import 'package:pits_app/modules/profile/domain/use_case/get_profile_services.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/bloc/profile_services_bloc.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/car_brands.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/car_categories.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/description.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/insurers.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/job_price.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/map.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/profile_actions.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/send_button.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/services.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/tab_bar.dart';
import 'package:pits_app/modules/profile/presentation/sections/profile_service/part/work_schedule.dart';

String desc =
    '"Taller chapa,pintura, mecánica en general, colocación y posterior homologación bola remolque. Reparación carenados de circuito."';

class ProfileServiceScreen extends StatefulWidget {
  final ServiceSingleEntity entity;

  const ProfileServiceScreen({required this.entity, Key? key})
      : super(key: key);

  @override
  State<ProfileServiceScreen> createState() => _ProfileServiceScreenState();
}

class _ProfileServiceScreenState extends State<ProfileServiceScreen>
    with TickerProviderStateMixin {
  late TabController tabController;
  late ProfileServicesBloc profileServicesBloc;
  late ProfileServicesBloc profileCarBrandsBloc;

  @override
  void initState() {
    profileServicesBloc = ProfileServicesBloc(
        GetProfileServices(repository: ProfileRepository()),
        id: widget.entity.id,
        url: AppUrls.profileServices)..add(const ProfileServicesEvent.getServices());
    profileCarBrandsBloc = ProfileServicesBloc(
        GetProfileServices(repository: ProfileRepository()),
        id: widget.entity.id,
        url: AppUrls.profileCarBrands)
      ..add(const ProfileServicesEvent.getServices());
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: NestedScrollView(
          headerSliverBuilder: (c, b) => [
                SliverAppBar(
                  bottom: PreferredSize(
                    preferredSize: const Size(0, 20),
                    child: Container(),
                  ),
                  pinned: false,
                  expandedHeight: MediaQuery.of(context).size.height * 0.4,
                  flexibleSpace: Stack(
                    children: [
                      Positioned.fill(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Image(
                            fit: BoxFit.cover,
                            image: widget.entity.cover.isEmpty ? const AssetImage(AppImages.emptyService) : NetworkImage(
                              widget.entity.cover,
                            ),
                          )),
                      // Positioned(
                      //     top: 16 + MediaQuery.of(context).padding.top,
                      //     left: 20,
                      //     child: GestureDetector(
                      //       onTap: () {
                      //         Navigator.pop(context);
                      //       },
                      //       child: Container(
                      //           padding: const EdgeInsets.all(6),
                      //           decoration: BoxDecoration(
                      //               borderRadius: BorderRadius.circular(8),
                      //               color: fieldGrey.withOpacity(0.2)),
                      //           child: SvgPicture.asset(
                      //             AppIcons.iArrowLeft,
                      //             width: 24,
                      //             height: 24,
                      //             color: white,
                      //           )),
                      //     )),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 24,
                          decoration:const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(50),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -1,
                        left: 0,
                        right: 0,
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: ClipRRect(
                                    child: widget.entity.image.isEmpty ? Image.asset(AppImages.emptyService) : Image.network(
                                      widget.entity.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: const EdgeInsets.only(top: 5),
                                        child: Text(
                                          widget.entity.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 24),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                const    ProfileSendButton(),
                const SizedBox(
                  height: 24,
                ),
                ProfileTabBar(tabController: tabController),
                const SizedBox(
                  height: 15,
                ),
                const  ProfileActions(),
                const  SizedBox(
                  height: 24,
                ),
                ProfileDescription(desc: desc),
                const   SizedBox(
                  height: 16,
                ),
                const   WorkSchedule(),
                const  SizedBox(
                  height: 16,
                ),
               /* const  SizedBox(
                  height: 16,
                ),
                const ProfileMapPoint(),*/
                const SizedBox(
                  height: 32,
                ),
                /*BlocProvider.value(value: profileServicesBloc,
                    child:const ProfileServices()),
                const   SizedBox(
                  height: 32,
                ),
                BlocProvider.value(value: profileCarBrandsBloc,
                    child:const ProfileCarBrands()),*/
               /* const  SizedBox(
                  height: 32,
                ),
                const   ProfileInsurers(),*/
                // SizedBox(
                //   height: 32,
                // ),
                // ProfileCarCategories(),
                const JobPrice(title: "Reparación ultra económica", description: "Rehabilitar lo que se ha estropeado", icon: "🛺", price: "30"),
                const SizedBox(height: 20),
                const JobPrice(title: "Reparación regular", description: "Recambios compatibles", icon: "🏎", price: "150"),
                const SizedBox(height: 20),
                const JobPrice(title: "Reparación de casa", description: "Recambios originales según marca", icon: "🚀", price: "500"),
                /*const SizedBox(
                  height: 50,
                ),*/
              ],
            ),
          )),
    );
  }
}
