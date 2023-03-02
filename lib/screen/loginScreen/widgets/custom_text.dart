import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomText extends StatefulWidget {
  const CustomText({
    Key? key,
    required this.animatedText,
  }) : super(key: key);

  final String? animatedText;

  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedTextKit(

          animatedTexts: [
            TyperAnimatedText(
              widget.animatedText.toString(),
              textStyle: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Horizon',
              ),
              speed: const Duration(
                seconds: 1
              )
            ),
          ],
        totalRepeatCount: 2,
        displayFullTextOnTap: true,
      ),
    );
  }
}
