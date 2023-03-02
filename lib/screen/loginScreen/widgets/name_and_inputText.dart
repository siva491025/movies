import 'package:flutter/material.dart';

class NameAndInputText extends StatefulWidget {
  const NameAndInputText({Key? key,
    required this.editTextTitle,
    required this.hintText,
    this.prifixIcon,
    this.suffixIcon,
    this.iconOnPress
  }) : super(key: key);

  final String editTextTitle;
  final String hintText;
  final Widget? prifixIcon;
  final Widget? suffixIcon;
  final Function? iconOnPress;

  @override
  State<NameAndInputText> createState() => _NameAndInputTextState();
}

class _NameAndInputTextState extends State<NameAndInputText> {
  @override
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            widget.editTextTitle,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16.0,
        ),
        TextField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              ),
            ),
            hintText: widget.hintText,
            prefixIcon: widget.prifixIcon,
          ),
        )
      ],
    );
  }
}
