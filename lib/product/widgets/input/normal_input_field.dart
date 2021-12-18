import 'package:flutter/material.dart';

class NormalInputField extends TextField {
  NormalInputField({Key? key, String? title, required ThemeData data, Widget? icon})
      : super(
          key: key,
          decoration: InputDecoration(
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              fillColor: data.colorScheme.error,
              filled: true,
              labelText: '$title',
              prefixIcon: icon),
        );
}
