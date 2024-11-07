import 'package:flutter/material.dart';

Widget custemtextformfield({
  TextEditingController? controller,
  final String? Function(String?)? validator,
  Function()? suffix,
  Icon? icon,
  String? hinttext,
  bool? obscure,
  String? obscurecha,
}) {
  return TextFormField(
    obscureText: obscure!,
    obscuringCharacter: obscurecha!,
    controller: controller,
    validator: validator,
    decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: suffix, icon: icon!),
        hintText: hinttext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
  );
}

Widget cumtomcard() {
  return Card();
}
