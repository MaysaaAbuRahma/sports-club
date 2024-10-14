import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/models/recommendation.dart';

class RecommandationsCard extends StatelessWidget {
  const RecommandationsCard({
    super.key,
    required this.recommendation,
  });
  final Recommendation recommendation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(recommendation.image!),
            ),
            title: Text(
              demoRecommendations[0].name!,
              style: const TextStyle(
                  height: 2, fontSize: 20, fontWeight: FontWeight.bold),
              //overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              recommendation.source!,
              style: const TextStyle(height: 2, fontStyle: FontStyle.italic),
              // overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            recommendation.text!,
            maxLines: 4,
            style: const TextStyle(height: 1.5),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
