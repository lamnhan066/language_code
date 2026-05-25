import 'package:flutter_test/flutter_test.dart';
import 'package:language_code/language_code.dart';

void main() {
  test('playStore includes exact platform locales', () {
    expect(PlatformSupportedCodes.playStore, contains(LanguageCodes.af));
    expect(PlatformSupportedCodes.playStore, contains(LanguageCodes.he_IL));
    expect(PlatformSupportedCodes.playStore, contains(LanguageCodes.zh_CN));
    expect(PlatformSupportedCodes.playStore, contains(LanguageCodes.zh_TW));
    expect(PlatformSupportedCodes.playStore, contains(LanguageCodes.es_419));
  });

  test('appStore includes exact platform locales', () {
    expect(PlatformSupportedCodes.appStore, contains(LanguageCodes.gu_IN));
    expect(PlatformSupportedCodes.appStore, contains(LanguageCodes.or_IN));
    expect(PlatformSupportedCodes.appStore, contains(LanguageCodes.pa_IN));
    expect(PlatformSupportedCodes.appStore, contains(LanguageCodes.ur_PK));
    expect(PlatformSupportedCodes.appStore, contains(LanguageCodes.es_MX));
    expect(PlatformSupportedCodes.appStore, contains(LanguageCodes.he));
  });

  test('both uses two digit keys and paired platform codes', () {
    expect(
      PlatformSupportedCodes.both.keys,
      everyElement((LanguageCodes code) => code.code.length == 2),
    );
    expect(PlatformSupportedCodes.both.length, equals(39));
    expect(
      PlatformSupportedCodes.both[LanguageCodes.en],
      equals({
        const PlatformCode(LanguageCodes.en_AU, LanguageCodes.en_AU),
        const PlatformCode(LanguageCodes.en_CA, LanguageCodes.en_CA),
        const PlatformCode(LanguageCodes.en_GB, LanguageCodes.en_GB),
        const PlatformCode(LanguageCodes.en_US, LanguageCodes.en_US),
      }),
    );
    expect(
      PlatformSupportedCodes.both[LanguageCodes.zh],
      equals({
        const PlatformCode(LanguageCodes.zh_CN, LanguageCodes.zh_Hans),
        const PlatformCode(LanguageCodes.zh_TW, LanguageCodes.zh_Hant),
        const PlatformCode(LanguageCodes.zh_HK, LanguageCodes.zh_Hant),
      }),
    );
    expect(
      PlatformSupportedCodes.both[LanguageCodes.he],
      equals({const PlatformCode(LanguageCodes.he_IL, LanguageCodes.he)}),
    );
  });
}
