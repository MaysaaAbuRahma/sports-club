import 'package:flutter/material.dart';
import 'package:sport_app/constant.dart';

class logo extends StatelessWidget {
  const logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.4,
      child: Container(
        color: kSecondaryColor,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(
              image: AssetImage(
                  'assets/images/—Pngtree—fitness gym logo_7886025.png'),
              width: 147.0,
            ),
            SizedBox(),
            Text(
              "ABC GYM",
              style: TextStyle(
                fontSize: 18.0, // حجم الخط
                fontWeight: FontWeight.bold, // وزن الخط (عريض)
                color: Colors.white, // لون الخط
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Gather Friends \n and Celebrate the Spirit of Sports',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            Spacer(
              flex: 2,
            )
          ],
        ),
      ),
    );
  }
}
