import 'package:flutter/material.dart';
import 'package:how_to_atomic_app/product/widgets/icon/secure_icon.dart';

import 'normal_form_input.dart';
import 'normal_input_field.dart';

class PasswordInputField extends StatefulWidget {
  const PasswordInputField({Key? key}) : super(key: key);

  @override
  _PasswordInputFieldState createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  final String _title = 'Password';
  bool _isSecureText = false;

  void _changeSecure() {
    setState(() {
      _isSecureText = !_isSecureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return NormalInputFormField(
      data: Theme.of(context),
      title: _title,
      isSecure: _isSecureText,
      suffixIcon: IconButton(
          onPressed: () {
            _changeSecure();
          },
          icon: SecureIcon(isSecure: _isSecureText)),
    );
  }
}
