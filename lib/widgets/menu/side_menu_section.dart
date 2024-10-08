import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sport_app/constant.dart';
//import 'package:sport_app/constant.dart';
import 'package:sport_app/widgets/logo.dart';
import 'package:sport_app/widgets/menu/contacts_info.dart';
import 'package:sport_app/widgets/menu/goals.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(
        children: [
          logo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContactsInfo(),
                Divider(),
                Goals(),
                Divider(),
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/download.svg'),
                        SizedBox(
                          width: kDefaultPadding / 2,
                        ),
                        Text(
                          'Download Brochure',
                          style: TextStyle(
                            color: Theme.of(context).textTheme.bodyLarge!.color,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: kDefaultPadding * 2),
                  color: kBgColor,
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/linkedin.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/github.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/twitter.svg"),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/dribble.svg"),
                      ),
                      Spacer()
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      )),
    );
  }
}
