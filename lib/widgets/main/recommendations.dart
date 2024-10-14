import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/models/recommendation.dart';
import 'package:sport_app/widgets/main/recommandations.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Club Members",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: kDefaultPadding,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.antiAlias,
            child: Row(
              children: List.generate(
                  demoRecommendations.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding),
                        child: RecommandationsCard(
                          recommendation: demoRecommendations[index],
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
