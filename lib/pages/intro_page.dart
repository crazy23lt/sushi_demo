import 'package:demo/components/button.dart';
import 'package:demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0), // 边缘插入
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 主轴
          crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴 start
          children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              "SUSHI MAN",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 28, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset("lib/images/002-sushi-1.png")),
            Text(
              "THE TASTE OF JAPANESE FOOD.",
              style:
                  GoogleFonts.dmSerifDisplay(fontSize: 44, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
                "Feel the taste of the most popular Japanese food from anywhere and anytime",
                style: TextStyle(color: Colors.grey[300], height: 2)),
            const SizedBox(
              height: 25,
            ),
            MyButton(
              text: "Get Started",
              onTip: () {
                Navigator.pushNamed(context, "/menupage");
              },
            )
          ],
        ),
      ),
    );
  }
}
