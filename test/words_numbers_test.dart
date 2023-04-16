import 'package:flutter_test/flutter_test.dart';
import 'package:words_numbers/words_numbers.dart';

void main() {
  test('convertTextNumberToString should convert numeric words to integers',
      () {
    final textNumber = 'one two three four five';
    final expectedResult = '1 2 3 4 5';
    final result = WordsNumbers.convertTextNumberToString(textNumber);
    expect(result, equals(expectedResult));
  });

  test('convertTextNumberToString should preserve non-numeric words', () {
    final textNumber = 'hello world one two three';
    final expectedResult = 'hello world 1 2 3';
    final result = WordsNumbers.convertTextNumberToString(textNumber);
    expect(result, equals(expectedResult));
  });

  test('convertTextNumberToString should handle empty input', () {
    final textNumber = '';
    final expectedResult = '';
    final result = WordsNumbers.convertTextNumberToString(textNumber);
    expect(result, equals(expectedResult));
  });

  test('convertTextNumberToString should handle single-word input', () {
    final textNumber = 'three';
    final expectedResult = '3';
    final result = WordsNumbers.convertTextNumberToString(textNumber);
    expect(result, equals(expectedResult));
  });
}
