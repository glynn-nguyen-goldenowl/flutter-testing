class UserLogin {
  /*
      The current user logged in
   */
  String currentUserLoggedIn = "";

  /*
      The userName is not valid if
      ...userName length is in [5-8] letters
    */
  bool validateUserName(String userName) {
    if (userName.length < 5) {
      return false;
    }
    if (userName.length > 8) {
      return false;
    }
    return true;
  }

  /*
      The result is invalid if
      ... has user logged before
      ... userName is not valid
    */
  bool loggedIn(String userName) {
    if (currentUserLoggedIn.isNotEmpty && validateUserName(userName)) {
      currentUserLoggedIn = userName;
      return true;
    }
    return false;
  }
}
