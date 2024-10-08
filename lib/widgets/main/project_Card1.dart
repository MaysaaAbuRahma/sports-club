import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/models/projects.dart';

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    required this.project,
    super.key,
  });
  final Project project;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            project.image!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Text(
            project.title!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.labelSmall,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: Text(
              project.description!,
              style: TextStyle(height: 1.5),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'More Info >',
                style: TextStyle(color: kPrimaryColor),
              ))
        ],
      ),
    );
  }
}
