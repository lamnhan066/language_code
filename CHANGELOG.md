## 0.5.3+1

- Add codecov badge.

## 0.5.3

- Able to set test by Locale.
- Remove the version of Flutter environment.
- Improve tests for Locale.
- Improve tests for unavailable language.

## 0.5.2

- Better to handle the way to get the [LanguageCode.code] to make it more compatible with the older major version.
- Improve comments.
- Mark `LanguageCode.rawCode` as deprecated, use `LanguageCode.rawLocale.toString()` instead.

## 0.5.1

- Add language codes: `pa_PK`, `sr_SP`.

## 0.5.0

- Add multiple language codes and country codes. Also add common ISO 639-3 language codes and country codes (851 in total).
- **BREAKING CHANGE:** Remove `englishNames` and `nativeNames` to reduce the complexity. We only have `englishName` and `nativeName` from now.
- **BREAKING CHANGE:** Method `fromEnglishName` and `fromNativeName` return as `Iterable` from this version.
- Add `LanguageCode.rawLocale` to get the raw locale of the device.

## 0.4.2

- Add `Spanish Argentina` (Thanks @validcube).

## 0.4.1

- Add `Filipino` (Thanks @Ushie).
- Add `:` to `nativeName` parameter in comments.

## 0.4.0

- Modify the `englishName` and `nativeName` to reduce the complexity:
  - zh("zh", "Chinese", "中文 (Zhōngwén)|汉语|漢語") -> zh("zh", "Chinese", "中文|Zhōngwén")
  - nl("nl", "Dutch", "Nederlands, Vlaams") -> nl("nl", "Dutch", "Nederlands")
  - el("el", "Greek|Modern", "Ελληνικά") -> el("el", "Greek", "Ελληνικά")
  - he("he", "Hebrew (modern)", "עברית") -> he("he", "Hebrew", "עברית")
  - ja("ja", "Japanese", "日本語 (にほんご／にっぽんご)") -> ja("ja", "Japanese", "日本語|にほんご|にっぽんご")
  - ko("ko", "Korean", "한국어 (韓國語)|조선말 (朝鮮語)") -> ko("ko", "Korean", "한국어|韓國語|조선말|朝鮮語|")
  - mr("mr", "Marathi (Marāṭhī)", "मराठी") -> mr("mr", "Marathi", "मराठी|Marāṭhī")
  - ro("ro", "Romanian|Moldavian|Moldovan", "română") -> ro("ro", "Romanian", "română")
  - sa("sa", "Sanskrit (Saṁskṛta)", "संस्कृतम्") -> sa("sa", "Sanskrit", "संस्कृतम्|Saṁskṛta")
  - to("to", "Tonga (Tonga Islands)", "faka Tonga") -> to("to", "Tonga", "faka Tonga")
  - za("za", "Zhuang|Chuang", "Saɯ cueŋƅ|Saw cuengh") -> za("za", "Zhuang|Chuang", "Saɯ cueŋƅ|Saw cuengh")
- Add more language codes:
  - dz("dz", "Dzongkha", "རྫོང་ཁ")
  - sh("sh", "Serbo-Croatian", "Srpskohrvatski")
  - zu("zu", "Zulu", "isiZulu")
- Add some common country codes:
  - nl_BE("nl_BE", "Flemish", "Vlaams")
  - en_AU("en_AU", "English (Australian)", "Australian English")
  - en_CA("en_CA", "English (Canadian)", "Canadian English")
  - en_GB("en_GB", "English (British)", "British English")
  - en_US("en_US", "English (American)", "American English")
  - fr_CA("fr_CA", "French (Canadian)", "français canadien")
  - fr_CH("fr_CH", "French (Swiss)", "français suisse")
  - de_AT("de_AT", "Austrian German", "Österreichisches Deutsch")
  - de_CH("de_CH", "Swiss High German", "Schweizer Hochdeutsch")
  - pt_BR("pt_BR", "Brazilian Portuguese", "português do Brasil")
  - pt_PT("pt_PT", "European Portuguese", "português europeu")
  - ro_MD("ro_MD", "Moldavian|Moldovan", "moldovenească")
  - es_ES("es_ES", "Spanish (Spain)", "español de España")
  - es_MX("es_MX", "Spanish (Mexico)", "español de México")
  - zh_CN("zh_CN", "Chinese (simplified)", "简体中文")
  - zh_TW("zh_TW", "Chinese (traditional)", "繁體中文")
- **BREAKING CHANGE NOTE**: The method `.fromEnglishName` and `.fromNativeName` may be broken in this version because of those changes.

## 0.3.1

- Update comments.
- Update homepage URL.

## 0.3.0

- Add `englishName` and `nativeName` to get the first value from `englishNames` and `nativeNames`.
- Bring `name` back and returns `englishName`.

## 0.3.0-rc.1

- Change from `name` to `englishNames` and returns a list of English names, the `name` was removed. Because it's a default value of `enum` so I have to change it to throw `UnimplementedError`.
- Change from `nativeName` to `nativeNames` and returns a list of native names, `nativeName` was removed.
- Change from `.fromName` to `.fromEnglishName`.

## 0.2.0

- Change from using `window` to `PlatformDispatcher`.
- Using sdk: ">=2.18.0 <4.0.0" and flutter: ">=3.3.0".

## 0.1.1

- Add `LanguageCode.setTestCode` to set a `LanguageCodes` for testing.

## 0.1.0

- Add `LanguageCodes`, a pre-defined language code, name in English and name in Native for all the countries.
- **[BREAKING CHANGE]** Rename from `LanguageCode.code` to `LanguageCode.rawCode`.
- Add new `LanguageCode.code`, this variable will return as `LanguageCodes`.

## 0.0.1

- Initial release.
