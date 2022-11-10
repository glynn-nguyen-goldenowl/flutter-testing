// This is a basic Flutter unit test.

import 'package:flutter_testing/registration_util.dart';
import 'package:flutter_testing/user_login.dart';
import 'package:test/test.dart';

void main() {
  test('5 letters userName returns true', () {
    var userLogin = UserLogin();
    expect(userLogin.loggedIn("12345"),true);
  });
  // HOMEWORK
  // valid userName return true
  // invalid userName return false
  // refactor UserLogin class.
  // apply setUp & tearDown

}
