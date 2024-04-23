import 'package:flutter/material.dart';
import 'package:protofolioo/widgets/project_card%20widget.dart';
import '../constants/colors.dart';
import '../utils/projects_utils.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          const Text(
            "Graduation Project",
            style: TextStyle(
              fontSize: 24,
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < GradProjectUtils.length; i++)
                  ProjectCard(project: GradProjectUtils[i]),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          const Text(
            "Work Projects",
            style: TextStyle(
              fontSize: 24,
              color: CustomColor.whitePrimary,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 900,
            ),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCard(project: workProjectUtils[i]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
