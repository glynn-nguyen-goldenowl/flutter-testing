// This is a basic Flutter unit test.

import 'package:flutter_testing/registration_util.dart';
import 'package:test/test.dart';

void main() {
  const validUsername = 'username';
  const invalidUsername = '';
  const validPassword = 'username';
  const invalidPassword = '1';
  test('empty username returns false', () {
    expect(
      RegistrationUtil.instance.validateRegistrationUserInput(
        invalidUsername,
        validPassword,
        validPassword,
      ),
      false,
    );
  });
  // password less than two digits
  test('password less than two digits', () {
    expect(
      RegistrationUtil.instance.validateRegistrationUserInput(
        validUsername,
        invalidPassword,
        invalidPassword,
      ),
      false,
    );
  });

  // confirmed password not the same as password.
  test('confirmed password not the same as password', () {
    expect(
      RegistrationUtil.instance.validateRegistrationUserInput(
        validUsername,
        validPassword,
        '$validPassword abcd',
      ),
      false,
    );
  });

  // valid user input
  test('valid user input', () {
    expect(
      RegistrationUtil.instance.validateRegistrationUserInput(
        validUsername,
        validPassword,
        validPassword,
      ),
      true,
    );
  });
}
