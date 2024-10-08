import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sport_app/constant.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text("Goals",
              style: TextStyle(
                fontSize: 20.0, // حجم الخط
                fontWeight: FontWeight.bold, // وزن الخط (عريض)
                color: Colors.white, // لون الخط
                fontStyle: FontStyle.italic,
              )),
        ),
        buildGoals(text: ' Reduce body fat.'),
        buildGoals(text: ' Increase muscle mass.'),
        buildGoals(text: ' Enhance overall fitness levels.'),
        buildGoals(text: '  Improve range of motion.'),
      ],
    );
  }

  Padding buildGoals({required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
