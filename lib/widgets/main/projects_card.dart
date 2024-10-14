//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/models/projects.dart';
import 'package:sport_app/respnsive.dart';
import 'package:sport_app/widgets/main/project_Card1.dart';

class ProjectsCard extends StatelessWidget {
  const ProjectsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Text(
            "Our Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Respnsive(
          desktop: buildGrideView(
            itemCount: demoProjects.length,
            crossAxsitCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCards(project: demoProjects[index]),
          ),
          tablet: buildGrideView(
            itemCount: demoProjects.length,
            crossAxsitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCards(project: demoProjects[index]),
          ),
          mobileLarge: buildGrideView(
            itemCount: demoProjects.length,
            crossAxsitCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCards(project: demoProjects[index]),
          ),
          mobile: buildGrideView(
            itemCount: demoProjects.length,
            crossAxsitCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) =>
                ProjectCards(project: demoProjects[index]),
          ),
        )
      ],
    );
  }

  GridView buildGrideView({
    required int itemCount,
    required int crossAxsitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: itemCount,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxsitCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
