import 'package:flutter_test/flutter_test.dart';

import 'package:test_metrics/test_metrics.dart';

void main() {
  Calculator? calc;
  group('a', () {
    group('b', () {
      group('c', () {
        test('adds one to input values', () {
          calc = Calculator();
          expect(calc?.addOne(2), 3);
          expect(calc?.addOne(-7), -6);
          expect(calc?.addOne(0), 1);
        });
      });
    });
  });
}
