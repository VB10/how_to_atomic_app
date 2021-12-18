import 'package:flutter/material.dart';
import 'package:how_to_atomic_app/core/model/socail_login_interface.dart';
import 'package:how_to_atomic_app/core/widget/eleveted_circular_button.dart';

class GoogleButton extends StatelessWidget {
  GoogleButton({Key? key, required this.onComplete}) : super(key: key);
  final _title = 'Google';

  final FutureSocialCallBack onComplete;

  final ISocialLogin _socialLogin = GoogleLogin();
  @override
  Widget build(BuildContext context) {
    return ElevetedCircularButton(
      title: _title,
      primaryColor: Colors.red[400],
      onPressed: () async {
        onComplete(await _socialLogin.login());
      },
    );
  }
}
