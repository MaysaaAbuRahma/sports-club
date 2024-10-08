import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/respnsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Respnsive.isMobile(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpeg",
            //width: 4,
            fit: BoxFit.cover,
            // height: 4,
          ),
          Container(
            color: kDarkColor.withOpacity(0.10),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Focus on resistance training,\n progressive overload.",
                    style: Respnsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headlineMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )
                        : Theme.of(context).textTheme.headlineSmall!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            )),
                SizedBox(
                  height: kDefaultPadding,
                ),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultPadding * 2,
                        vertical: kDefaultPadding,
                      ),
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "CONTACT US",
                      style: TextStyle(
                        color: kBgColor,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
