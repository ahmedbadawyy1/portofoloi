
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for (int i = 0; i < platformItem.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    leading: Image.asset(
                      platformItem[i]["img"],
                      width: 26.0,
                    ),
                    title: Text(platformItem[i]['title']),
                  ),
                ),
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),
        Flexible(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 500,
              ),
              child: Wrap(
                spacing: 10.0,
                runSpacing: 10.0,
                children: [
                  for (int i = 0; i < skillItem.length; i++)
                    Chip(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 12.0,
                      ),
                      backgroundColor: CustomColor.bgLight2,
                      label: Text(skillItem[i]['title']),
                      avatar: Image.asset(skillItem[i]['img']),
                    )
                ],
              ),
            )),
      ],
    );
  }
}
