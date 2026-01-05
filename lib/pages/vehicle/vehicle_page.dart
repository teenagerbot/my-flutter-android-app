import 'package:first_flutter/desing/dimensions.dart';
import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/styles.dart';
import 'package:first_flutter/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

class VehiclePage extends StatelessWidget {
  const VehiclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Codmlifer Dispatcher', style: primaryTextStyle),
        backgroundColor: SurfaceColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(color: backgroundColor, child: const VehicleList()),
    );
  }
}
