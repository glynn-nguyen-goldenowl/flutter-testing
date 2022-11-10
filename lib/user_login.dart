class UserLogin {
  /*
      The current user logged in
   */
  String _currentUserLoggedIn = "";

  /*
      The userName is not valid if
      ...userName length is not in [5-8] letters
    */
  bool _validateUserName(String userName) {
    if (userName.length < 5) {
      return false;
    }
    if (userName.length > 8) {
      return false;
    }
    return true;
  }

  /*
      The result is valid if
      ... has no user logged before
      ... userName is valid
    */
  bool loggedIn(String userName) {
    if (_currentUserLoggedIn.isNotEmpty && _validateUserName(userName)) {
      _currentUserLoggedIn = userName;
      return true;
    }
    return false;
  }
}
