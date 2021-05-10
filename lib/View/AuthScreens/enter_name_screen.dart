import 'package:farmer_app/Utils/button.dart';
import 'package:farmer_app/Utils/constants.dart';
import 'package:farmer_app/Utils/utils.dart';
import 'package:farmer_app/Utils/widgets.dart';
import 'package:farmer_app/View/MainScreens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class EnterNameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Enter Your Name"),
      body: Padding(
        padding: sidePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              decoration: inputDecor(hint: "Enter Your Name"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomButton(
                  child: Text("Get Started"),
                  onPressed: () => Get.to(() => HomeScreen()),
                ),
                verSpacing5,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
