import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import '../../../../../../assets/colors/colors.dart';
import '../../../../../../assets/constants/app_icons.dart';
import '../../../../../../utils/action_status.dart';
import '../bloc/single/service_single_bloc.dart';
import '../widgets/info_row.dart';



class ServiceInfoWindow extends StatefulWidget {
  const ServiceInfoWindow({super.key, required this.serviceSingleBloc});

  final ServiceSingleBloc serviceSingleBloc;

  static const infoWidth = 220.0;
  static const infoHeight = 164.0;

  @override
  State<ServiceInfoWindow> createState() => _ServiceInfoWindowState();
}

class _ServiceInfoWindowState extends State<ServiceInfoWindow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: ServiceInfoWindow.infoWidth,
      height: ServiceInfoWindow.infoHeight,
      child: BlocProvider.value(
        value: widget.serviceSingleBloc,
        child: BlocBuilder<ServiceSingleBloc, ServiceSingleState> (
            builder: (context, state) {
              if (state.actionStatus == ActionStatus.inProcess ||
                  state.actionStatus == ActionStatus.pure) {
                return Container(
                  color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
              } else if (state.actionStatus == ActionStatus.isFailure) {
                return Container(
                  color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text("Failed load service information"),
                  ),
                );
              } else {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                    // Background color if image is transparent or not covering fully
                    borderRadius: BorderRadius.circular(10),
                    // Optional: rounded corners
                    image: DecorationImage(
                      image: NetworkImage(
                        state.serviceSingle.image,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              state.serviceSingle.priceRange,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                            ),
                            const SizedBox(width: 10),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: SvgPicture.asset(
                                      AppIcons.star,
                                      colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                  TextSpan(
                                      text: " ${state.serviceSingle.rating.toString()}",
                                      style: Theme.of(context).textTheme
                                          .displayLarge!.copyWith(
                                          color: Colors.white,
                                          fontSize: 18
                                      )
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Text(state.serviceSingle.name,
                                style: Theme.of(context).textTheme
                                    .labelLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: const Color(0XFF04FF00)
                                )
                            )
                          ],
                        ),
//                        const Spacer(),
                      const Spacer(),
                        Text(state.serviceSingle.desc,
                          style: Theme.of(context).textTheme
                              .displayLarge!.copyWith(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Colors.white),
                          overflow: TextOverflow.ellipsis, // Добавлено свойство ellipsis
                          maxLines: 1,
                        ),
                        InfoRow(
                          title: state.serviceSingle.phone,
                          icon: AppIcons.phone,
                        ),
                        InfoRow(
                          title: state.serviceSingle.address,
                          icon: AppIcons.place,
                        ),
                      ],
                    ),
                  ),
                );
              }
            }
        ),
     ),
    );
  }
}
