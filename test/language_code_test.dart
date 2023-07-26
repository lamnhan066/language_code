import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  test('getPlatformVersion', () async {
    expect(LanguageCode.rawCode, isNotEmpty);
    expect(LanguageCode.locale.languageCode, equals(LanguageCode.rawCode));
  });

  group('LanguageCodes', () {
    test('set test LanguageCodes', () {
      LanguageCode.setTestCode(LanguageCodes.cu);
      const code = LanguageCodes.cu;
      expect(LanguageCode.rawCode, code.code);
      expect(LanguageCode.locale, equals(code.locale));
      expect(LanguageCode.code, equals(code));
    });

    test('multiple names and nativeNames', () {
      const code = LanguageCodes.kl;
      expect(code.englishNames, isA<List<String>>());
      expect(code.nativeNames, isA<List<String>>());

      expect(code.englishNames, ['Kalaallisut', 'Greenlandic']);
      expect(code.nativeNames, ['kalaallisut', 'kalaallit oqaasii']);

      expect(LanguageCodes.fromCode(code.code), code);
      expect(LanguageCodes.fromLocale(code.locale), code);
      expect(LanguageCodes.fromEnglishName('Kalaallisut'), code);
      expect(LanguageCodes.fromEnglishName('Greenlandic'), code);
      expect(LanguageCodes.fromNativeName('kalaallisut'), code);
      expect(LanguageCodes.fromNativeName('kalaallit oqaasii'), code);
    });
  });
}
