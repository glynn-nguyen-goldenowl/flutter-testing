
class RegistrationUtil{

  /// private constructor
  RegistrationUtil._();
  /// the one and only instance of this singleton
  static final instance = RegistrationUtil._();

  /// the input is not valid if...
  /// ...the username/password is empty
  /// ...the confirmed password is not the same as the real password
  /// ...the password contains less than 2 digits
  bool validateRegistrationUserInput(String userName, String password, String confirmedPassword){
    return true;
  }
}