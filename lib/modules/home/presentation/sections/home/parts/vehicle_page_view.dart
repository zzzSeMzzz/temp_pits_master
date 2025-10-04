import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:pits_app/modules/car/presentation/sections/add_car/data/model/vehicle.dart';
import 'package:pits_app/modules/home/presentation/sections/home/widgets/car_info_card.dart';
import '../../../../../../assets/colors/colors.dart';

class VehiclePageView extends StatefulWidget {
  const VehiclePageView({super.key, required this.vehicles, required this.onSelectVehicle});

  final List<Vehicle> vehicles;
  final Function(Vehicle) onSelectVehicle;

  @override
  State<VehiclePageView> createState() => _VehiclePageViewState();
}

class _VehiclePageViewState extends State<VehiclePageView> {
  final PageController _pageController = PageController();

  double _currentPage = 0.0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page ?? 0.0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 90,
          child: PageView(
            controller: _pageController,
              onPageChanged: (int page) {
                widget.onSelectVehicle.call(widget.vehicles[page]);
              },
            children: widget.vehicles
                .map((vehicle) => CarInfoBox(vehicle: vehicle)).toList()
          ),
        ),
        if(widget.vehicles.length>1) DotsIndicator(
          dotsCount: widget.vehicles.length,
          position: _currentPage,
          decorator: const DotsDecorator(
            size: Size.square(6.0),
            activeSize: Size.square(8.0),
            shape: CircleBorder(
              side: BorderSide(color: textGrey, width: 1),
            ),
            activeShape: CircleBorder(
              side: BorderSide(color: Colors.black, width: 2.0),
            ),
            color: Colors.transparent, // делаем основной цвет прозрачным
            activeColor: Colors.transparent,
          ),
        )
      ],
    );
  }
}
