import 'package:first_flutter/desing/dimensions.dart';
import 'package:first_flutter/desing/colors.dart';
import 'package:first_flutter/desing/images.dart';
import 'package:first_flutter/desing/styles.dart';
import 'package:first_flutter/pages/driver/driver_list.dart';
import 'package:first_flutter/pages/vehicle/vehicle_list.dart';
import 'package:flutter/material.dart';

class DriverPage extends StatelessWidget {
  const DriverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select driver', style: primaryTextStyle),
        backgroundColor: SurfaceColor,
        elevation: 0,
        centerTitle: true,
        leading: IconButton( icon: ArrowBackImage, onPressed: () {
          Navigator.pop(context);
        }),
      ),
      body: Container(color: backgroundColor, child: const DriverList()),
    );
  }
}
