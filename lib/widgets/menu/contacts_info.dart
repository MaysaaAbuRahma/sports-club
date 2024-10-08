import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';

class ContactsInfo extends StatelessWidget {
  const ContactsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address', text: 'Station street 5'),
        buildContactInfo(title: 'Country', text: 'Palestine'),
        buildContactInfo(title: 'Email', text: 'MaysaaRahma@gmail.com'),
        buildContactInfo(title: 'Mobile', text: '0592591173'),
        buildContactInfo(title: 'webSite', text: 'my@WibSite.com'),
      ],
    );
  }

  Padding buildContactInfo({required String title, required String text}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "$title",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Text(text)
        ],
      ),
    );
  }
}
