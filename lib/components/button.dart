import "package:demo/theme/colors.dart";
import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text,required this.onTip});
  final String text;
  final void Function()? onTip;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTip,
      child: Container(
          decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.all(20),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(text, style: const TextStyle(color: Colors.white)),
            const SizedBox(
              width: 10,
            ),
            const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ])),
    );
  }
}
