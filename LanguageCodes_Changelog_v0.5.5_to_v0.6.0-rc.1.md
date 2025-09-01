# LanguageCodes Enum Changelog: v0.5.5 to v0.6.0-rc.1

This document lists all changes to the `LanguageCodes` enum between version v0.5.5 and v0.6.0-rc.1 of the `language_code` package.

## Summary of Versions

- **Starting version**: v0.5.5 (tag: `f52375c1cd3f91d127f2f5f789af27f3ce32e281`)
- **Ending version**: v0.6.0-rc.1 (tag: `2ee18517cf0c88d6aadf2dde2ce319abcdc143fd`)

## Major Changes Overview

Between v0.5.5 and v0.6.0-rc.1, the `LanguageCodes` enum underwent a **complete regeneration** using a new automated crawler script. This represents the most significant change to the enum since its creation.

---

## Version 0.6.0-rc.1

**Release Date**: August 26, 2025  
**Tag**: `2ee18517cf0c88d6aadf2dde2ce319abcdc143fd`

### Changes to LanguageCodes enum:
- **Improve the `LanguageCode.rawLocale` method to be able to test**
  - This affects how the enum interacts with the testing framework
- **Improve tests**
  - Enhanced test coverage for the LanguageCodes enum
- **Improve README**
  - Updated documentation explaining LanguageCodes usage

### Technical improvements:
- Fixed `LanguageCode.rawLocale` method to prioritize test values and simplify locale retrieval
- Enhanced `LanguageCode` tests for `rawLocale` and `tryCode` methods
- Updated README to enhance clarity and structure of features and usage sections

---

## Version 0.6.0-rc

**Release Date**: August 26, 2025  
**Tag**: `0deacd0f8e68cd421796196f4f85cc4b35379bc4`

### 🎯 Major LanguageCodes enum changes:

#### **New crawler script**
- **Complete regeneration** of the `LanguageCodes` enum using an automated crawler
- **Data source**: Fetches ISO 639-1 and ISO 639-2 codes from [Wikipedia](https://en.wikipedia.org/wiki/List_of_ISO_639-2_codes)
- **Code coverage**: Extracts both **2-letter** and **3-letter** language codes
- **Naming improvements**: Includes **English names** and **native names** in `non-Latin (Latin)` format when available
- **Backward compatibility**: Adds missing codes from the older version to maintain compatibility
- **Auto-generation**: The enum is now automatically generated, ensuring consistency and completeness

#### **LanguageCodes enum structure improvements**:
1. **Enhanced native names**: Native names now follow the format `non-Latin (Latin)` when both scripts are available
2. **Standardized language names**: Improved consistency in English language names
3. **Comprehensive coverage**: Added hundreds of new language codes from ISO standards
4. **Better sorting**: 2-letter codes are sorted first, followed by 3-letter codes, both alphabetically

#### **New LanguageCode.tryCode() method**
- **Purpose**: Retrieves the device language as `LanguageCodes` with an optional `defaultCode`
- **Fallback order**:
  1. Full `rawLocale` (e.g., `en_US`)
  2. `rawLocale.languageCode` (e.g., `en`)
  3. Returns `defaultCode` (default: `LanguageCodes.und`)
- **Benefits**: Provides graceful fallback when exact locale match isn't found

### ⚠️ Deprecated features:
- **`LanguageCode.rawCode`** → use `rawLocale.toString()` instead

### Technical implementation details:
- **Crawler script**: New tool at `tool/crawler.dart` automatically generates the enum
- **Enum sorting**: Added `tool/sort.dart` to maintain consistent alphabetical ordering
- **Native name processing**: Intelligent logic to combine script and Latin forms of native names
- **Data validation**: Enhanced name cleaning and standardization
- **Legacy support**: Preserved all codes from the previous version while adding new ones

---

## Pre-v0.6.0-rc Changes (for context)

### Version 0.5.5
**Release Date**: October 1, 2024

#### LanguageCodes enum additions:
- **Update `ku` locale native name** (thanks @msonntag13)
- **Add new locale entries** (thanks @msonntag13):
  - `ckb` - Central Kurdish
  - `kmr` - Northern Kurdish (Kurmanji)
  - `lki` - Laki
  - `prs` - Dari Persian
  - `sdh` - Southern Kurdish

---

## Impact Analysis

### For Developers:
1. **Vastly expanded language support**: Hundreds of new language codes available
2. **Improved native name accuracy**: Better representation of native language names
3. **Enhanced fallback mechanism**: `tryCode()` method provides better error handling
4. **Automated maintenance**: Crawler ensures the enum stays up-to-date with standards

### Breaking Changes:
- **`LanguageCode.rawCode` deprecated**: Use `rawLocale.toString()` instead
- **Enum structure**: While backward compatible, the internal structure has been completely regenerated

### Benefits:
- **ISO standard compliance**: Full coverage of ISO 639-1 and ISO 639-2 codes
- **Consistent naming**: Standardized format for language names
- **Future-proof**: Automated generation ensures ongoing accuracy
- **Enhanced testing**: Better support for unit testing with locale overrides

---

## Files Modified

The major changes between v0.5.5 and v0.6.0-rc.1 affected these key files:

1. **`lib/src/language_codes.dart`** - Complete regeneration of the LanguageCodes enum
2. **`lib/src/language_code.dart`** - Added `tryCode()` method and improved `rawLocale`
3. **`tool/crawler.dart`** - New automated crawler script (added)
4. **`tool/sort.dart`** - New enum sorting utility (added)
5. **`test/language_code_test.dart`** - Enhanced test coverage
6. **`README.md`** - Updated documentation
7. **`pubspec.yaml`** - Added new development dependencies

This represents the most significant evolution of the LanguageCodes enum, transitioning from manual maintenance to automated generation while maintaining full backward compatibility.