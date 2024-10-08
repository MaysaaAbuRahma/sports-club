import 'package:flutter/material.dart';
import 'package:sport_app/screens/home_screen.dart';
import 'package:sport_app/widgets/main/home_banner.dart';
import 'package:sport_app/widgets/main/icon_info.dart';
import 'package:sport_app/widgets/main/projects_card.dart';
import 'package:sport_app/widgets/main/recommendations.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen(
      mainSecton: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            ProjectsCard(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
