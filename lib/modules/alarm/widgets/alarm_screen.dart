import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_rentacar/core/extensions.dart';
import 'package:pits_app/modules/alarm/bloc/alarm_bloc.dart';
import 'package:provider/provider.dart';

import 'comment_view_model.dart';



showAlarmBottomSheet(BuildContext context, Function(String) onEnterValue) {
  showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return CommentScreen(onEnterValue: onEnterValue);
      }
  );
}

class AlarmScreen extends StatefulWidget {
  const AlarmScreen({super.key, required this.onEnterValue});

  final Function(String) onEnterValue;

  @override
  State<AlarmScreen> createState() => _AlarmScreenState();
}

class _AlarmScreenState extends State<AlarmScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AlarmBloc, AlarmState>(
        listener: (context, state) {

        },
        builder: (context, state) {
          return Container(
           /* height: MediaQuery
                .of(context)
                .size
                .height * 0.5,*/
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: SafeArea(
              child: Text("data")
            ),
          );
        }
    );
  }
}
