abstract class ISocialLogin {
  Future<String?> login();
}

typedef FutureSocialCallBack = Function(String? token);

class GoogleLogin extends ISocialLogin {
  @override
  Future<String?> login() async {
    return 'ok';
  }
}

class FacebookLogin extends ISocialLogin {
  @override
  Future<String?> login() async {
    return 'ok';
  }
}
