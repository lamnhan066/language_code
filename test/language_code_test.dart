import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  test('getPlatformVersion', () async {
    expect(LanguageCode.rawCode, isNotEmpty);
    expect(LanguageCode.locale.languageCode, equals(LanguageCode.rawCode));
  });
}
