import 'package:flutter/material.dart';

class customtextformfield extends StatelessWidget {
  String? hinttext;
  TextEditingController? controller;
  final String? Function(String?)? validator;
  Function() suffix;
  bool? obscure;
  String obscurecha;
  double borderRadious;
  Icon icon;

  customtextformfield(
      {super.key,
      required this.obscurecha,
      required this.obscure,
      required this.icon,
      required this.hinttext,
      required this.suffix,
      required this.controller,
      required this.validator,
      this.borderRadious = 30});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure as bool,
      obscuringCharacter: obscurecha,
      validator: validator,
      controller: controller,
      
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed:suffix, icon: icon),
          hintText: hinttext,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadious))),
    );
  }
}

class customButton extends StatelessWidget {
  String? text;
  Function() onPressed;
  customButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: Text(text.toString()));
  }
}
