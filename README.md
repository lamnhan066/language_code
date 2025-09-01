# Language Code

[![codecov](https://codecov.io/gh/lamnhan066/language_code/graph/badge.svg?token=YTTPYNAY4C)](https://codecov.io/gh/lamnhan066/language_code)

A Dart package for working with language codes and device locales.  
Includes a complete set of **ISO 639-1 (2-letter)** and **ISO 639-2 (3-letter)** codes with **English** and **native names**.

---

## Features

- Detect the device’s current language and locale  
- Convert between `Locale` and `LanguageCodes`  
- Look up by code, English name, or native name  
- Includes almost all ISO 639 codes with English + native names  
- Test-friendly (override locale or code in tests)  
- Auto-generated from [Wikipedia’s ISO 639-2 list](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes)  

---

## Usage

### Get the current device language

```dart
final languageCode = LanguageCode.code; // as LanguageCodes
final locale = LanguageCode.locale;     // as Locale
````

### Get the raw device locale

May not be supported by `LanguageCodes`:

```dart
final rawLocale = LanguageCode.rawLocale;
```

### Get language details

- [code]: language code.
- [englishName]: preferred English name.
- [nativeName]: preferred native name.
- [nativeLatinName]: preferred native latin name (if available).
- [nativeNonLatinName]: preferred native non-latin name (if available).

```dart
var language = LanguageCodes.en;
print(language.englishName); // 'English'
print(language.nativeName);  // 'English'

language = LanguageCodes.vi;
print(language.englishName); // 'Vietnamese'
print(language.nativeName);  // 'Tiếng Việt'

ar("ar", r"Arabic", r"العربية", r"al'Arabiyyeẗ", r"العربية")
language = LanguageCodes.ar;
print(language.code); // ar
print(language.englishName); // Arabic
print(language.nativeName); // العربية
print(language.nativeLatinName); // al'Arabiyyeẗ
print(language.nativeNonLatinName); // العربية
```

### Convert values to `LanguageCodes`

```dart
LanguageCodes.fromLocale(Locale('vi'));        // → LanguageCodes.vi
LanguageCodes.fromCode('vi');                  // → LanguageCodes.vi
LanguageCodes.fromEnglishName('Vietnamese');   // → Iterable<LanguageCodes>
LanguageCodes.fromNativeName('Tiếng Việt');    // → Iterable<LanguageCodes>
```

> ⚠️ If no matching element is found, the methods throw a `StateError` unless an `orElse` is provided.

### Optional default fallback

```dart
final code = LanguageCode.tryCode(defaultCode: LanguageCodes.en);
```

Fallback order:

1. Full `rawLocale`
2. `rawLocale.languageCode`
3. `defaultCode` (default: `LanguageCodes.und`)

---

## Testing

Override values in unit tests:

```dart
LanguageCode.setTestCode(LanguageCodes.vi);
// or
LanguageCode.setTestLocale(const Locale('fr'));
```

Reset with `null` to restore normal behavior.

> ⚠️ You can only use one override at a time.

---

## Contributions

Missing or incorrect language?
Please open an issue or create a PR.
The codes are auto-generated via a crawler, but feedback is always welcome.
