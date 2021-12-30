import 'package:stacked/stacked.dart';

class LoginViewModel extends BaseViewModel{
  final String _loginTxt = 'Log In to Account';
  String get loginTxt => _loginTxt;

  final String _login = 'Log In';
  String get login => _login;

  final String _signUp = 'Sign Up';
  String get signUp => _signUp;

  final String _email = 'EMAIL';
  String get email => _email;

  final String _emailExp = 'example@nomail.com';
  String get emailExp => _emailExp;

  final String _pwd = 'PASSWORD';
  String get pwd => _pwd;

  final String _frgtPwd = 'Forgot Password?';
  String get frgtPwd => _frgtPwd;

  final String _loginWithGoogle = 'Log In with Google';
  String get loginWithGoogle => _loginWithGoogle;

  bool _showpwd = true;
  bool get showpwd => _showpwd;

  void showPwd(){
    if (_showpwd == true){
      _showpwd = false;
    }else {
      _showpwd = true;
    }
    notifyListeners();
  }



}