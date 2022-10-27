
class RegistrationUtil{

  /// private constructor
  RegistrationUtil._();
  /// the one and only instance of this singleton
  static final instance = RegistrationUtil._();

  /// the input is not valid if...
  /// ...the username is empty
  /// ...the password contains less than 2 digits
  /// ...the confirmed password is not the same as the password

  bool validateRegistrationUserInput(String username, String password, String confirmedPassword){
    return true;
  }
}