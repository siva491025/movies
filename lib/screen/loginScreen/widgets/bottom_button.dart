import 'package:flutter/material.dart';

class BottomButton extends StatefulWidget {
  const BottomButton({Key? key,
    required this.buttonName,
    required this.onPress,
  }) : super(key: key);

  final String buttonName;
  final Function? onPress;

  @override
  State<BottomButton> createState() => _BottomButtonState();
}

class _BottomButtonState extends State<BottomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => widget.onPress!(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.indigo.shade800,
          textStyle: const TextStyle(
            fontSize: 16.0,
                color: Colors.white,
          ),
        ),
        child: SizedBox(
          height: 40.0,
          width: 250.0,
          child: Center(
            child: Text(
              widget.buttonName,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
    );
  }
}
