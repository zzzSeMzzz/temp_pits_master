import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pits_app/assets/constants/app_images.dart';
import '../../../../../../utils/action_status.dart';
import '../bloc/single/service_single_bloc.dart';



class ServiceInfoWindow extends StatefulWidget {
  const ServiceInfoWindow({super.key, required this.serviceSingleBloc});

  final ServiceSingleBloc serviceSingleBloc;

  @override
  State<ServiceInfoWindow> createState() => _ServiceInfoWindowState();
}

class _ServiceInfoWindowState extends State<ServiceInfoWindow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      height: 164,
      child: BlocProvider.value(
        value: widget.serviceSingleBloc,
        child: BlocBuilder<ServiceSingleBloc, ServiceSingleState> (
            builder: (context, state) {
              if (state.actionStatus == ActionStatus.inProcess ||
                  state.actionStatus == ActionStatus.pure) {
                return Container(
                  color: Colors.white,
                  child: const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                );
              } else if (state.actionStatus == ActionStatus.isFailure) {
                return Container(
                  color: Colors.white,
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
                  child: Column(
                    children: [
                      Text("data")
                    ],
                  ),
                );
              }
            }
        ),
     ),
    );
  }
}
