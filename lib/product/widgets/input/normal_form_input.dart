import 'package:flutter/material.dart';

class NormalInputFormField extends TextFormField {
  NormalInputFormField({
    Key? key,
    String? title,
    bool isSecure = false,
    required ThemeData data,
    Widget? suffixIcon,
  }) : super(
          key: key,
          obscureText: isSecure,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            fillColor: data.colorScheme.onBackground,
            filled: true,
            labelText: '$title',
            suffixIcon: suffixIcon,
          ),
        );
}
