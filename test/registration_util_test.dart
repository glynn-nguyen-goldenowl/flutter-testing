// This is a basic Flutter unit test.

import 'package:flutter_testing/registration_util.dart';
import 'package:test/test.dart';

void main() {
  group('test registration', () {
    test('empty username returns false', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("", "123", "123"),
          false);
    });
    // password less than two digits
    test('password less than two digits return false', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("dave", "1", "1"),
          false);
    });
    // confirmed password not the same as password.
    test('confirmed password not the same as password return false', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("dave", "123", "124"),
          false);
    });
    // valid user input
    test('valid user input return true', () {
      expect(
          RegistrationUtil.instance
              .validateRegistrationUserInput("dave", "12", "12"),
          true);
    });
  });
}
