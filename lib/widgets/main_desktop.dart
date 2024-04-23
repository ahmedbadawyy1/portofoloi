import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      height: screenHight/1.2,
      constraints: const BoxConstraints(maxHeight: 450.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const  Text(
                "Hi,\nI'm Ahmed Badawy\n A Flutter Developer",
                style: TextStyle(
                  fontSize: 30.0,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(

                      backgroundColor: CustomColor.yellowPrimary
                  ),
                  child: const Text(
                    "Get in touch",
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),),
              )
            ],
          ),
          Image.asset(
            "images/Picsart_22-10-03_07-30-20-855.jpg",
            width: screenWidth / 2,
            height: screenWidth/5,
          ),
        ],
      ),
    );
  }
}
