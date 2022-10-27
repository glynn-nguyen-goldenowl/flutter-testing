// This is a basic Flutter unit test.

import 'package:flutter_testing/registration_util.dart';
import 'package:test/test.dart';

void main() {
  group('Test validate registration user input', () {
    test('empty username returns false', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("", "123", "123"),
          false);
    });
    // password less than two digits.
    test('password less than two digits returns false', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("my name", "3", "3"),
          false);
    });
    // confirmed password not the same as password.
    test('confirmed password not the same as password returns false', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("my name", "123", "023"),
          false);
    });
    // valid user input.
    test('valid user input returns true', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("my name", "123", "123"),
          true);
    });
  });
}
