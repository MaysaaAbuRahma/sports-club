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
                        icon: Icon(Icons.menu),
                      )),
            ),
      drawer: SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Respnsive.isDesktop(context))
                  Expanded(
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
