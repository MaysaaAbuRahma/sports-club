import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';
import 'package:sport_app/respnsive.dart';
import 'package:sport_app/widgets/menu/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSecton});
  final Widget mainSecton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Respnsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        icon: const Icon(Icons.menu),
                      )),
            ),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Respnsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenuSection(),
                  ),
                Expanded(
                  flex: 7,
                  child: mainSecton,
                  //color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
