import 'package:flutter/material.dart';
import 'package:how_to_atomic_app/core/widget/eleveted_circular_button.dart';
import 'package:how_to_atomic_app/features/login/user_model.dart';
import 'package:how_to_atomic_app/product/widgets/facebook_button.dart';
import 'package:how_to_atomic_app/product/widgets/google_button.dart';
import 'package:how_to_atomic_app/product/widgets/input/normal_input_field.dart';
import 'package:how_to_atomic_app/product/widgets/input/password_input_field.dart';
import 'package:how_to_atomic_app/product/widgets/padding/custom_padding.dart';
import 'package:how_to_atomic_app/product/widgets/sheet/user_select_sheet.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final String _title = "Save";
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

  Future<void> _checkUserControl(String name, String password) async {
    await Future.delayed(const Duration(seconds: 1));
    if (name == User.mockUser.name && password == User.mockUser.password) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          UserSelectSheet().show(context);
        },
      ),
      appBar: AppBar(),
      body: Padding(
        padding: const CustomPadding.normalHorizontal(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            _normalField(context),
            const PasswordInputField(),
            _loginButton(),
            Expanded(child: _rowSocail())
          ],
        ),
      ),
    );
  }

  NormalInputField _normalField(BuildContext context) {
    return NormalInputField(
      data: Theme.of(context),
      title: 'Hello',
      icon: const Icon(Icons.ac_unit_sharp),
    );
  }

  ElevetedCircularButton _loginButton() {
    return ElevetedCircularButton(
      title: _title,
      onPressed: () async {
        await _checkUserControl('veli', 'bacik');
      },
    );
  }

  Row _rowSocail() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GoogleButton(onComplete: (token) {}),
        FacebookButton(onComplete: (token) {}),
      ],
    );
  }
}
