// This is a basic Flutter unit test.

import 'package:flutter_testing/registration_util.dart';
import 'package:test/test.dart';

void main() {
  test('5 letters userName returns true', () {
    expect(
        RegistrationUtil.instance
            .validateRegistrationUserInput("", "123", "123"),
        false);
  });
  // HOMEWORK
  // valid userName return true
  // invalid userName return false
  // refactor UserLogin class.
  // apply setUp & tearDown

}
