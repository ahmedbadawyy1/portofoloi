import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500.0,
      ),
      child: Column(
        children: [
          for (int i = 0; i < platformItem.length; i++)
            Container(
              margin: const EdgeInsets.only(bottom: 5.0),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                leading: Image.asset(
                  platformItem[i]['img'],
                  width: 26.0,
                ),
                title: Text(platformItem[i]['title']),
              ),
            ),
          const SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
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
          )
        ],
      ),
    );
  }
}
