import 'package:flutter/material.dart';

import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(
          vertical: 20
      ),
      alignment: Alignment.center,
      width: double.maxFinite,
      child: Text(
        "Made by Ahmed Badawy with Flutter"
        ,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: CustomColor.whiteSecondary,
        ),
      ),
    );
  }
}
