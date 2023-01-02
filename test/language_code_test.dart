import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  test('getPlatformVersion', () async {
    print('Language code: ${LanguageCode.code}');
    print('Language locale: ${LanguageCode.locale}');
  });
}
