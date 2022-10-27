// This is a basic Flutter unit test.

import 'package:flutter_testing/registration_util.dart';
import 'package:test/test.dart';

void main() {
  test('empty username returns false', () {
    expect(
        RegistrationUtil.instance
            .validateRegistrationUserInput("", "123", "123"),
        false);
  });
  // password less than two digits
  // confirmed password not the same as password.
  // valid user input
}
