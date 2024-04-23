import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:protofolioo/widgets/site_logo.dart';
import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../styles/styles.dart';

class HeaderDesktop extends StatelessWidget {
   HeaderDesktop({Key? key, required this.onNavTap}) : super(key: key);
  final Function(int) onNavTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      width: double.maxFinite,
      decoration: kHeaderDecoration ,
      child: Row(
        children: [
          SiteLogo(
            onTap: (){},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: TextButton(
                  onPressed: () {
                    onNavTap(i);
                  },
                  child: Text(
                    navTitles[i],
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: CustomColor.whitePrimary),
                  )),
            )
        ],
      ),
    );
  }
}
