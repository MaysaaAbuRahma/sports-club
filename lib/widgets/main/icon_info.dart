import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/respnsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 2),
      child: Respnsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.supervisor_account,
                        text: '67+',
                        label: 'clients',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.star,
                        text: '13k+',
                        label: 'Stars',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.public,
                        text: '30+',
                        label: 'Countries',
                      ),
                    ),
                    Expanded(
                      child: buildIconInfo(
                        context: context,
                        icon: Icons.location_on,
                        text: '139+',
                        label: 'Projects',
                      ),
                    ),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildIconInfo(
                  context: context,
                  icon: Icons.supervisor_account,
                  text: '67+',
                  label: 'clients',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.star,
                  text: '13k+',
                  label: 'Stars',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.public,
                  text: '30+',
                  label: 'Countries',
                ),
                buildIconInfo(
                  context: context,
                  icon: Icons.location_on,
                  text: '139+',
                  label: 'Projects',
                ),
              ],
            ),
    );
  }

  Column buildIconInfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50.0,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: kPrimaryColor,
                //fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelLarge,
        )
      ],
    );
  }
}
