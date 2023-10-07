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
