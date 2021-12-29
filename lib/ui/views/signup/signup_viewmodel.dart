import 'package:stacked/stacked.dart';

class SignUpViewModel extends BaseViewModel{
  final String _signupTxt = 'Create Account';
  String get signupTxt => _signupTxt;

  final String _login = 'Log In';
  String get login => _login;

  final String _signUp = 'Sign Up';
  String get signUp => _signUp;

  final String _firstName = 'FirstName';
  String get firstName => _firstName;

  final String _name = 'Name';
  String get name => _name;

  final String _email = 'EMAIL';
  String get email => _email;

  final String _emailExp = 'example@nomail.com';
  String get emailExp => _emailExp;

  final String _pwd = 'PASSWORD';
  String get pwd => _pwd;

  final String _confirmPwd = 'CONFIRM PASSWORD';
  String get confirmPwd => _confirmPwd;

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

  bool _showConfirmedpwd = true;
  bool get showConfirmedpwd => _showConfirmedpwd;

  void showConfirmedPwd(){
    if (_showConfirmedpwd == true){
      _showConfirmedpwd = false;
    }else {
      _showConfirmedpwd = true;
    }
    notifyListeners();
  }


  bool _checkedTerms = false;
  bool get checkedTerms => _checkedTerms;

  void onChekechTerms(){
    if (_checkedTerms == true){
      _checkedTerms = false;
    }else {
      _checkedTerms = true;
    }
    notifyListeners();
  }


  final String _terms = 'I agree to Terms & Conditions';
  String get terms => _terms;


  final String _save = 'Save';
  String get save => _save;



}