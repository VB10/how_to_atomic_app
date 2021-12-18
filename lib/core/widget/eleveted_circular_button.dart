import 'package:flutter/material.dart';

typedef FutureCallBack = Future<void> Function();

class ElevetedCircularButton extends StatefulWidget {
  const ElevetedCircularButton(
      {Key? key, required this.title, required this.onPressed, this.isCircle = false, this.primaryColor})
      : super(key: key);
  final String title;
  final bool isCircle;
  final Color? primaryColor;

  final FutureCallBack onPressed;
  @override
  _ElevetedButtonState createState() => _ElevetedButtonState();
}

class _ElevetedButtonState extends State<ElevetedCircularButton> {
  bool _isLoading = false;
  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> _completeProcess() async {
    _changeLoading();
    await widget.onPressed();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: widget.primaryColor, shape: widget.isCircle ? const CircleBorder() : null),
        onPressed: _isLoading ? null : _completeProcess,
        child: _isLoading ? const CircularProgressIndicator() : Text(widget.title));
  }
}
