// ignore_for_file: constant_identifier_names

import 'dart:ui';

/// LanguageCodes(code, name in English, name in native).
///   - [code]: language code.
///   - [englishNames]: List of names in English.
///   - [nativeNames]: List of names in native.
///
/// @Source https://stackoverflow.com/questions/3217492/list-of-language-codes-in-yaml-or-json
enum LanguageCodes {
  /// code: "ab", name: "Abkhaz", nativeName: "аҧсуа"
  ab("ab", "Abkhaz", "аҧсуа"),

  /// code: "aa", name: "Afar", nativeName: "Afaraf"
  aa("aa", "Afar", "Afaraf"),

  /// code: "af", name: "Afrikaans", nativeName: "Afrikaans"
  af("af", "Afrikaans", "Afrikaans"),

  /// code: "ak", name: "Akan", nativeName: "Akan"
  ak("ak", "Akan", "Akan"),

  /// code: "sq", name: "Albanian", nativeName: "Shqip"
  sq("sq", "Albanian", "Shqip"),

  /// code: "am", name: "Amharic", nativeName: "አማርኛ"
  am("am", "Amharic", "አማርኛ"),

  /// code: "ar", name: "Arabic", nativeName: "العربية"
  ar("ar", "Arabic", "العربية"),

  /// code: "an", name: "Aragonese", nativeName: "Aragonés"
  an("an", "Aragonese", "Aragonés"),

  /// code: "hy", name: "Armenian", nativeName: "Հայերեն"
  hy("hy", "Armenian", "Հայերեն"),

  /// code: "as", name: "Assamese", nativeName: "অসমীয়া"
  as("as", "Assamese", "অসমীয়া"),

  /// code: "av", name: "Avaric", nativeName: "авар мацӀ|магӀарул мацӀ"
  av("av", "Avaric", "авар мацӀ|магӀарул мацӀ"),

  /// code: "ae", name: "Avestan", nativeName: "avesta"
  ae("ae", "Avestan", "avesta"),

  /// code: "ay", name: "Aymara", nativeName: "aymar aru"
  ay("ay", "Aymara", "aymar aru"),

  /// code: "az", name: "Azerbaijani", nativeName: "azərbaycan dili"
  az("az", "Azerbaijani", "azərbaycan dili"),

  /// code: "bm", name: "Bambara", nativeName: "bamanankan"
  bm("bm", "Bambara", "bamanankan"),

  /// code: "ba", name: "Bashkir", nativeName: "башҡорт теле"
  ba("ba", "Bashkir", "башҡорт теле"),

  /// code: "eu", name: "Basque", nativeName: "euskara|euskera"
  eu("eu", "Basque", "euskara|euskera"),

  /// code: "be", name: "Belarusian", nativeName: "Беларуская"
  be("be", "Belarusian", "Беларуская"),

  /// code: "bn", name: "Bengali", nativeName: "বাংলা"
  bn("bn", "Bengali", "বাংলা"),

  /// code: "bh", name: "Bihari", nativeName: "भोजपुरी"
  bh("bh", "Bihari", "भोजपुरी"),

  /// code: "bi", name: "Bislama", nativeName: "Bislama"
  bi("bi", "Bislama", "Bislama"),

  /// code: "bs", name: "Bosnian", nativeName: "bosanski jezik"
  bs("bs", "Bosnian", "bosanski jezik"),

  /// code: "br", name: "Breton", nativeName: "brezhoneg"
  br("br", "Breton", "brezhoneg"),

  /// code: "bg", name: "Bulgarian", nativeName: "български език"
  bg("bg", "Bulgarian", "български език"),

  /// code: "my", name: "Burmese", nativeName: "ဗမာစာ"
  my("my", "Burmese", "ဗမာစာ"),

  /// code: "ca", name: "Catalan|Valencian", nativeName: "Català"
  ca("ca", "Catalan|Valencian", "Català"),

  /// code: "ch", name: "Chamorro", nativeName: "Chamoru"
  ch("ch", "Chamorro", "Chamoru"),

  /// code: "ce", name: "Chechen", nativeName: "нохчийн мотт"
  ce("ce", "Chechen", "нохчийн мотт"),

  /// code: "ny", name: "Chichewa|Chewa|Nyanja", nativeName: "chiCheŵa|chinyanja"
  ny("ny", "Chichewa|Chewa|Nyanja", "chiCheŵa|chinyanja"),

  /// code: "cv", name: "Chuvash", nativeName: "чӑваш чӗлхи"
  cv("cv", "Chuvash", "чӑваш чӗлхи"),

  /// code: "kw", name: "Cornish", nativeName: "Kernewek"
  kw("kw", "Cornish", "Kernewek"),

  /// code: "co", name: "Corsican", nativeName: "corsu|lingua corsa"
  co("co", "Corsican", "corsu|lingua corsa"),

  /// code: "cr", name: "Cree", nativeName: "ᓀᐦᐃᔭᐍᐏᐣ"
  cr("cr", "Cree", "ᓀᐦᐃᔭᐍᐏᐣ"),

  /// code: "hr", name: "Croatian", nativeName: "hrvatski"
  hr("hr", "Croatian", "hrvatski"),

  /// code: "cs", name: "Czech", nativeName: "česky|čeština"
  cs("cs", "Czech", "česky|čeština"),

  /// code: "da", name: "Danish", nativeName: "dansk"
  da("da", "Danish", "dansk"),

  /// code: "dv", name: "Divehi|Dhivehi|Maldivian;", nativeName: "ދިވެހި"
  dv("dv", "Divehi|Dhivehi|Maldivian", "ދިވެހި"),

  /// code: "dz", name: "Dzongkha", nativeName: "རྫོང་ཁ"
  dz("dz", "Dzongkha", "རྫོང་ཁ"),

  /// code: "nl", name: "Dutch", nativeName: "Nederlands"
  nl("nl", "Dutch", "Nederlands"),

  /// code: "nl", name: "Flemish", nativeName: "Vlaams"
  nl_BE("nl_BE", "Flemish", "Vlaams"),

  /// code: "en", name: "English", nativeName: "English"
  en("en", "English", "English"),

  /// code: "en_AU", name: "Australian English", nativeName: "Australian English"
  en_AU("en_AU", "English (Australian)", "Australian English"),

  /// code: "en_CA", name: "Canadian English", nativeName: "Canadian English"
  en_CA("en_CA", "English (Canadian)", "Canadian English"),

  /// code: "en_GB", name: "British English", nativeName: "British English"
  en_GB("en_GB", "English (British)", "British English"),

  /// code: "en_US", name: "American English", nativeName: "American English"
  en_US("en_US", "English (American)", "American English"),

  /// code: "eo", name: "Esperanto", nativeName: "Esperanto"
  eo("eo", "Esperanto", "Esperanto"),

  /// code: "et", name: "Estonian", nativeName: "eesti, eesti keel"
  et("et", "Estonian", "eesti|eesti keel"),

  /// code: "ee", name: "Ewe", nativeName: "Eʋegbe"
  ee("ee", "Ewe", "Eʋegbe"),

  /// code: "fo", name: "Faroese", nativeName: "føroyskt"
  fo("fo", "Faroese", "føroyskt"),

  /// code: "fj", name: "Fijian", nativeName: "vosa Vakaviti"
  fj("fj", "Fijian", "vosa Vakaviti"),

  /// code: "fl", name: "Filipino", nativeName: "Wikang Filipino"
  fil("fil", "Filipino", "Wikang Filipino"),

  /// code: "fi", name: "Finnish", nativeName: "suomi|suomen kieli"
  fi("fi", "Finnish", "suomi|suomen kieli"),

  /// code: "fr", name: "French", nativeName: "français|langue française"
  fr("fr", "French", "français|langue française"),

  /// code: "fr", name: "French (Canadian)", nativeName: "français canadien"
  fr_CA("fr_CA", "French (Canadian)", "français canadien"),

  /// code: "fr", name: "French (Swiss)", nativeName: "français suisse"
  fr_CH("fr_CH", "French (Swiss)", "français suisse"),

  /// code: "ff", name: "Fula|Fulah|Pulaar|Pular", nativeName: "Fulfulde|Pulaar|Pular"
  ff("ff", "Fula|Fulah|Pulaar|Pular", "Fulfulde|Pulaar|Pular"),

  /// code: "gl", name: "Galician", nativeName: "Galego"
  gl("gl", "Galician", "Galego"),

  /// code: "ka", name: "Georgian", nativeName: "ქართული"
  ka("ka", "Georgian", "ქართული"),

  /// code: "de", name: "German", nativeName: "Deutsch"
  de("de", "German", "Deutsch"),

  /// code: "de_AT", name: "Austrian German", nativeName: "Österreichisches Deutsch"
  de_AT("de_AT", "Austrian German", "Österreichisches Deutsch"),

  /// code: "de_CH", name: "Swiss High German", nativeName: "Schweizer Hochdeutsch"
  de_CH("de_CH", "Swiss High German", "Schweizer Hochdeutsch"),

  /// code: "el", name: "Greek", nativeName: "Ελληνικά"
  el("el", "Greek", "Ελληνικά"),

  /// code: "gn", name: "Guaraní", nativeName: "Avañeẽ"
  gn("gn", "Guaraní", "Avañeẽ"),

  /// code: "gu", name: "Gujarati", nativeName: "ગુજરાતી"
  gu("gu", "Gujarati", "ગુજરાતી"),

  /// code: "ht", name: "Haitian|Haitian Creole", nativeName: "Kreyòl ayisyen"
  ht("ht", "Haitian|Haitian Creole", "Kreyòl ayisyen"),

  /// code: "ha", name: "Hausa", nativeName: "Hausa|هَوُسَ"
  ha("ha", "Hausa", "Hausa|هَوُسَ"),

  /// code: "he", name: "Hebrew", nativeName: "עברית"
  he("he", "Hebrew", "עברית"),

  /// code: "hz", name: "Herero", nativeName: "Otjiherero"
  hz("hz", "Herero", "Otjiherero"),

  /// code: "hi", name: "Hindi", nativeName: "हिन्दी|हिंदी"
  hi("hi", "Hindi", "हिन्दी|हिंदी"),

  /// code: "ho", name: "Hiri Motu", nativeName: "Hiri Motu"
  ho("ho", "Hiri Motu", "Hiri Motu"),

  /// code: "hu", name: "Hungarian", nativeName: "Magyar"
  hu("hu", "Hungarian", "Magyar"),

  /// code: "ia", name: "Interlingua", nativeName: "Interlingua"
  ia("ia", "Interlingua", "Interlingua"),

  /// code: "id", name: "Indonesian", nativeName: "Bahasa Indonesia"
  id("id", "Indonesian", "Bahasa Indonesia"),

  /// code: "ie", name: "Interlingue", nativeName: "Originally called Occidental|then Interlingue after WWII"
  ie("ie", "Interlingue", "Occidental|Interlingue"),

  /// code: "ga", name: "Irish", nativeName: "Gaeilge"
  ga("ga", "Irish", "Gaeilge"),

  /// code: "ig", name: "Igbo", nativeName: "Asụsụ Igbo"
  ig("ig", "Igbo", "Asụsụ Igbo"),

  /// code: "ik", name: "Inupiaq", nativeName: "Iñupiaq|Iñupiatun"
  ik("ik", "Inupiaq", "Iñupiaq|Iñupiatun"),

  /// code: "io", name: "Ido", nativeName: "Ido"
  io("io", "Ido", "Ido"),

  /// code: "is", name: "Icelandic", nativeName: "Íslenska"
  ///
  /// Added _ to the end because `is` is a default keyword
  is_("is", "Icelandic", "Íslenska"),

  /// code: "it", name: "Italian", nativeName: "Italiano"
  it("it", "Italian", "Italiano"),

  /// code: "iu", name: "Inuktitut", nativeName: "ᐃᓄᒃᑎᑐᑦ"
  iu("iu", "Inuktitut", "ᐃᓄᒃᑎᑐᑦ"),

  /// code: "ja", name: "Japanese", nativeName: "日本語|にほんご|にっぽんご"
  ja("ja", "Japanese", "日本語|にほんご|にっぽんご"),

  /// code: "jv", name: "Javanese", nativeName: "basa Jawa"
  jv("jv", "Javanese", "basa Jawa"),

  /// code: "kl", name: "Kalaallisut|Greenlandic", nativeName: "kalaallisut|kalaallit oqaasii"
  kl("kl", "Kalaallisut|Greenlandic", "kalaallisut|kalaallit oqaasii"),

  /// code: "kn", name: "Kannada", nativeName: "ಕನ್ನಡ"
  kn("kn", "Kannada", "ಕನ್ನಡ"),

  /// code: "kr", name: "Kanuri", nativeName: "Kanuri"
  kr("kr", "Kanuri", "Kanuri"),

  /// code: "ks", name: "Kashmiri", nativeName: "कश्मीरी|كشميري‎"
  ks("ks", "Kashmiri", "कश्मीरी|كشميري‎"),

  /// code: "kk", name: "Kazakh", nativeName: "Қазақ тілі"
  kk("kk", "Kazakh", "Қазақ тілі"),

  /// code: "km", name: "Khmer", nativeName: "ភាសាខ្មែរ"
  km("km", "Khmer", "ភាសាខ្មែរ"),

  /// code: "ki", name: "Kikuyu|Gikuyu", nativeName: "Gĩkũyũ"
  ki("ki", "Kikuyu|Gikuyu", "Gĩkũyũ"),

  /// code: "rw", name: "Kinyarwanda", nativeName: "Ikinyarwanda"
  rw("rw", "Kinyarwanda", "Ikinyarwanda"),

  /// code: "ky", name: "Kirghiz|Kyrgyz", nativeName: "кыргыз тили"
  ky("ky", "Kirghiz|Kyrgyz", "кыргыз тили"),

  /// code: "kv", name: "Komi", nativeName: "коми кыв"
  kv("kv", "Komi", "коми кыв"),

  /// code: "kg", name: "Kongo", nativeName: "KiKongo"
  kg("kg", "Kongo", "KiKongo"),

  /// code: "ko", name: "Korean", nativeName: "한국어|韓國語|조선말|朝鮮語"
  ko("ko", "Korean", "한국어|韓國語|조선말|朝鮮語|"),

  /// code: "ku", name: "Kurdish", nativeName: "Kurdî|كوردی‎"
  ku("ku", "Kurdish", "Kurdî|كوردی‎"),

  /// code: "kj", name: "Kwanyama|Kuanyama", nativeName: "Kuanyama"
  kj("kj", "Kwanyama|Kuanyama", "Kuanyama"),

  /// code: "la", name: "Latin", nativeName: "latine|lingua latina"
  la("la", "Latin", "latine|lingua latina"),

  /// code: "lb", name: "Luxembourgish|Letzeburgesch", nativeName: "Lëtzebuergesch"
  lb("lb", "Luxembourgish|Letzeburgesch", "Lëtzebuergesch"),

  /// code: "lg", name: "Luganda", nativeName: "Luganda"
  lg("lg", "Luganda", "Luganda"),

  /// code: "li", name: "Limburgish, Limburgan, Limburger", nativeName: "Limburgs"
  li("li", "Limburgish|Limburgan|Limburger", "Limburgs"),

  /// code: "ln", name: "Lingala", nativeName: "Lingála"
  ln("ln", "Lingala", "Lingála"),

  /// code: "lo", name: "Lao", nativeName: "ພາສາລາວ"
  lo("lo", "Lao", "ພາສາລາວ"),

  /// code: "lt", name: "Lithuanian", nativeName: "lietuvių kalba"
  lt("lt", "Lithuanian", "lietuvių kalba"),

  /// code: "lu", name: "Luba-Katanga", nativeName: "Luba-Katanga"
  lu("lu", "Luba-Katanga", "Luba-Katanga"),

  /// code: "lv", name: "Latvian", nativeName: "latviešu valoda"
  lv("lv", "Latvian", "latviešu valoda"),

  /// code: "gv", name: "Manx", nativeName: "Gaelg|Gailck"
  gv("gv", "Manx", "Gaelg|Gailck"),

  /// code: "mk", name: "Macedonian", nativeName: "македонски јазик"
  mk("mk", "Macedonian", "македонски јазик"),

  /// code: "mg", name: "Malagasy", nativeName: "Malagasy fiteny"
  mg("mg", "Malagasy", "Malagasy fiteny"),

  /// code: "ms", name: "Malay", nativeName: "bahasa Melayu|بهاس ملايو‎"
  ms("ms", "Malay", "bahasa Melayu|بهاس ملايو‎"),

  /// code: "ml", name: "Malayalam", nativeName: "മലയാളം"
  ml("ml", "Malayalam", "മലയാളം"),

  /// code: "mt", name: "Maltese", nativeName: "Malti"
  mt("mt", "Maltese", "Malti"),

  /// code: "mi", name: "Māori", nativeName: "te reo Māori"
  mi("mi", "Māori", "te reo Māori"),

  /// code: "mr", name: "Marathi", nativeName: "मराठी|Marāṭhī"
  mr("mr", "Marathi", "मराठी|Marāṭhī"),

  /// code: "mh", name: "Marshallese", nativeName: "Kajin M̧ajeļ"
  mh("mh", "Marshallese", "Kajin M̧ajeļ"),

  /// code: "mn", name: "Mongolian", nativeName: "монгол"
  mn("mn", "Mongolian", "монгол"),

  /// code: "na", name: "Nauru", nativeName: "Ekakairũ Naoero"
  na("na", "Nauru", "Ekakairũ Naoero"),

  /// code: "nv", name: "Navajo|Navaho", nativeName: "Diné bizaad|Dinékʼehǰí"
  nv("nv", "Navajo|Navaho", "Diné bizaad|Dinékʼehǰí"),

  /// code: "nb", name: "Norwegian Bokmål", nativeName: "Norsk bokmål"
  nb("nb", "Norwegian Bokmål", "Norsk bokmål"),

  /// code: "nd", name: "North Ndebele", nativeName: "isiNdebele"
  nd("nd", "North Ndebele", "isiNdebele"),

  /// code: "ne", name: "Nepali", nativeName: "नेपाली"
  ne("ne", "Nepali", "नेपाली"),

  /// code: "ng", name: "Ndonga", nativeName: "Owambo"
  ng("ng", "Ndonga", "Owambo"),

  /// code: "nn", name: "Norwegian Nynorsk", nativeName: "Norsk nynorsk"
  nn("nn", "Norwegian Nynorsk", "Norsk nynorsk"),

  /// code: "no", name: "Norwegian", nativeName: "Norsk"
  no("no", "Norwegian", "Norsk"),

  /// code: "ii", name: "Nuosu", nativeName: "ꆈꌠ꒿ Nuosuhxop"
  ii("ii", "Nuosu", "ꆈꌠ꒿ Nuosuhxop"),

  /// code: "nr", name: "South Ndebele", nativeName: "isiNdebele"
  nr("nr", "South Ndebele", "isiNdebele"),

  /// code: "oc", name: "Occitan", nativeName: "Occitan"
  oc("oc", "Occitan", "Occitan"),

  /// code: "oj", name: "Ojibwe, Ojibwa", nativeName: "ᐊᓂᔑᓈᐯᒧᐎᓐ"
  oj("oj", "Ojibwe|Ojibwa", "ᐊᓂᔑᓈᐯᒧᐎᓐ"),

  /// code: "cu", name: "Old Church Slavonic|Church Slavic|Church Slavonic|Old Bulgarian|Old Slavonic", nativeName: "ѩзыкъ словѣньскъ"
  cu(
      "cu",
      "Old Church Slavonic|Church Slavic|Church Slavonic|Old Bulgarian|Old Slavonic",
      "ѩзыкъ словѣньскъ"),

  /// code: "om", name: "Oromo", nativeName: "Afaan Oromoo"
  om("om", "Oromo", "Afaan Oromoo"),

  /// code: "or", name: "Oriya", nativeName: "ଓଡ଼ିଆ"
  or("or", "Oriya", "ଓଡ଼ିଆ"),

  /// code: "os", name: "Ossetian|Ossetic", nativeName: "ирон æвзаг"
  os("os", "Ossetian|Ossetic", "ирон æвзаг"),

  /// code: "pa", name: "Panjabi|Punjabi", nativeName: "ਪੰਜਾਬੀ|پنجابی‎"
  pa("pa", "Panjabi|Punjabi", "ਪੰਜਾਬੀ|پنجابی‎"),

  /// code: "pi", name: "Pāli", nativeName: "पाऴि"
  pi("pi", "Pāli", "पाऴि"),

  /// code: "fa", name: "Persian", nativeName: "فارسی"
  fa("fa", "Persian", "فارسی"),

  /// code: "pl", name: "Polish", nativeName: "polski"
  pl("pl", "Polish", "polski"),

  /// code: "ps", name: "Pashto, Pushto", nativeName: "پښتو"
  ps("ps", "Pashto|Pushto", "پښتو"),

  /// code: "pt", name: "Portuguese", nativeName: "Português"
  pt("pt", "Portuguese", "Português"),

  /// code: "pt", name: "Brazilian Portuguese", nativeName: "português do Brasil"
  pt_BR("pt_BR", "Brazilian Portuguese", "português do Brasil"),

  /// code: "pt", name: "European Portuguese", nativeName: "português europeu"
  pt_PT("pt_PT", "European Portuguese", "português europeu"),

  /// code: "qu", name: "Quechua", nativeName: "Runa Simi|Kichwa"
  qu("qu", "Quechua", "Runa Simi|Kichwa"),

  /// code: "rm", name: "Romansh", nativeName: "rumantsch grischun"
  rm("rm", "Romansh", "rumantsch grischun"),

  /// code: "rn", name: "Kirundi", nativeName: "kiRundi"
  rn("rn", "Kirundi", "kiRundi"),

  /// code: "ro", name: "Romanian", nativeName: "română"
  ro("ro", "Romanian", "română"),

  /// code: "ro", name: "Moldavian|Moldovan", nativeName: "moldovenească"
  ro_MD("ro_MD", "Moldavian|Moldovan", "moldovenească"),

  /// code: "ru", name: "Russian", nativeName: "русский язык"
  ru("ru", "Russian", "русский язык"),

  /// code: "sa", name: "Sanskrit", nativeName: "संस्कृतम्|Saṁskṛta"
  sa("sa", "Sanskrit", "संस्कृतम्|Saṁskṛta"),

  /// code: "sc", name: "Sardinian", nativeName: "sardu"
  sc("sc", "Sardinian", "sardu"),

  /// code: "sd", name: "Sindhi", nativeName: "सिन्धी|سنڌي|سندھی‎"
  sd("sd", "Sindhi", "सिन्धी|سنڌي|سندھی‎"),

  /// code: "se", name: "Northern Sami", nativeName: "Davvisámegiella"
  se("se", "Northern Sami", "Davvisámegiella"),

  /// code: "sm", name: "Samoan", nativeName: "gagana faa Samoa"
  sm("sm", "Samoan", "gagana faa Samoa"),

  /// code: "sg", name: "Sango", nativeName: "yângâ tî sängö"
  sg("sg", "Sango", "yângâ tî sängö"),

  /// code: "sr", name: "Serbian", nativeName: "српски језик"
  sr("sr", "Serbian", "српски језик"),

  /// code: "gd", name: "Scottish Gaelic|Gaelic", nativeName: "Gàidhlig"
  gd("gd", "Scottish Gaelic|Gaelic", "Gàidhlig"),

  /// code: "sn", name: "Shona", nativeName: "chiShona"
  sn("sn", "Shona", "chiShona"),

  /// code: "sh", name: "Serbo-Croatian", nativeName: "Srpskohrvatski"
  sh("sh", "Serbo-Croatian", "Srpskohrvatski"),

  /// code: "si", name: "Sinhala|Sinhalese", nativeName: "සිංහල"
  si("si", "Sinhala|Sinhalese", "සිංහල"),

  /// code: "sk", name: "Slovak", nativeName: "slovenčina"
  sk("sk", "Slovak", "slovenčina"),

  /// code: "sl", name: "Slovene", nativeName: "slovenščina"
  sl("sl", "Slovene", "slovenščina"),

  /// code: "so", name: "Somali", nativeName: "Soomaaliga|af Soomaali"
  so("so", "Somali", "Soomaaliga|af Soomaali"),

  /// code: "st", name: "Southern Sotho", nativeName: "Sesotho"
  st("st", "Southern Sotho", "Sesotho"),

  /// code: "es", name: "Spanish|Castilian", nativeName: "español|castellano"
  es("es", "Spanish|Castilian", "español|castellano"),

  /// code: "es_AR", name: "Spanish (Argentina)", nativeName: "español de Argentina"
  es_AR("es_AR", "Spanish (Argentina)", "español de Argentina")

  /// code: "es_ES", name: "Spanish (Spain)", nativeName: "español de España"
  es_ES("es_ES", "Spanish (Spain)", "español de España"),

  /// code: "es_MX", name: "Spanish (Mexico)", nativeName: "español de México"
  es_MX("es_MX", "Spanish (Mexico)", "español de México"),

  /// code: "su", name: "Sundanese", nativeName: "Basa Sunda"
  su("su", "Sundanese", "Basa Sunda"),

  /// code: "sw", name: "Swahili", nativeName: "Kiswahili"
  sw("sw", "Swahili", "Kiswahili"),

  /// code: "ss", name: "Swati", nativeName: "SiSwati"
  ss("ss", "Swati", "SiSwati"),

  /// code: "sv", name: "Swedish", nativeName: "svenska"
  sv("sv", "Swedish", "svenska"),

  /// code: "ta", name: "Tamil", nativeName: "தமிழ்"
  ta("ta", "Tamil", "தமிழ்"),

  /// code: "te", name: "Telugu", nativeName: "తెలుగు"
  te("te", "Telugu", "తెలుగు"),

  /// code: "tg", name: "Tajik", nativeName: "тоҷикӣ|toğikī|تاجیکی‎"
  tg("tg", "Tajik", "тоҷикӣ|toğikī|تاجیکی‎"),

  /// code: "th", name: "Thai", nativeName: "ไทย"
  th("th", "Thai", "ไทย"),

  /// code: "ti", name: "Tigrinya", nativeName: "ትግርኛ"
  ti("ti", "Tigrinya", "ትግርኛ"),

  /// code: "bo", name: "Tibetan Standard, Tibetan, Central", nativeName: "བོད་ཡིག"
  bo("bo", "Tibetan Standard|Tibetan|Central", "བོད་ཡིག"),

  /// code: "tk", name: "Turkmen", nativeName: "Türkmen, Түркмен"
  tk("tk", "Turkmen", "Türkmen|Түркмен"),

  /// code: "tl", name: "Tagalog", nativeName: "Wikang Tagalogᜏᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔"
  tl("tl", "Tagalog", "Wikang Tagalog|ᜏᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔"),

  /// code: "tn", name: "Tswana", nativeName: "Setswana"
  tn("tn", "Tswana", "Setswana"),

  /// code: "to", name: "Tonga", nativeName: "faka Tonga"
  to("to", "Tonga", "faka Tonga"),

  /// code: "tr", name: "Turkish", nativeName: "Türkçe"
  tr("tr", "Turkish", "Türkçe"),

  /// code: "ts", name: "Tsonga", nativeName: "Xitsonga"
  ts("ts", "Tsonga", "Xitsonga"),

  /// code: "tt", name: "Tatar", nativeName: "татарча|tatarça|تاتارچا‎"
  tt("tt", "Tatar", "татарча|tatarça|تاتارچا‎"),

  /// code: "tw", name: "Twi", nativeName: "Twi"
  tw("tw", "Twi", "Twi"),

  /// code: "ty", name: "Tahitian", nativeName: "Reo Tahiti"
  ty("ty", "Tahitian", "Reo Tahiti"),

  /// code: "ug", name: "Uighur|Uyghur", nativeName: "Uyƣurqə|ئۇيغۇرچە‎"
  ug("ug", "Uighur|Uyghur", "Uyƣurqə|ئۇيغۇرچە‎"),

  /// code: "uk", name: "Ukrainian", nativeName: "українська"
  uk("uk", "Ukrainian", "українська"),

  /// code: "ur", name: "Urdu", nativeName: "اردو"
  ur("ur", "Urdu", "اردو"),

  /// code: "uz", name: "Uzbek", nativeName: "zbek, Ўзбек|أۇزبېك‎"
  uz("uz", "Uzbek", "zbek|Ўзбек|أۇزبېك‎"),

  /// code: "ve", name: "Venda", nativeName: "Tshivenḓa"
  ve("ve", "Venda", "Tshivenḓa"),

  /// code: "vi", name: "Vietnamese", nativeName: "Tiếng Việt"
  vi("vi", "Vietnamese", "Tiếng Việt"),

  /// code: "vo", name: "Volapük", nativeName: "Volapük"
  vo("vo", "Volapük", "Volapük"),

  /// code: "wa", name: "Walloon", nativeName: "Walon"
  wa("wa", "Walloon", "Walon"),

  /// code: "cy", name: "Welsh", nativeName: "Cymraeg"
  cy("cy", "Welsh", "Cymraeg"),

  /// code: "wo", name: "Wolof", nativeName: "Wollof"
  wo("wo", "Wolof", "Wollof"),

  /// code: "fy", name: "Western Frisian", nativeName: "Frysk"
  fy("fy", "Western Frisian", "Frysk"),

  /// code: "xh", name: "Xhosa", nativeName: "isiXhosa"
  xh("xh", "Xhosa", "isiXhosa"),

  /// code: "yi", name: "Yiddish", nativeName: "ייִדיש"
  yi("yi", "Yiddish", "ייִדיש"),

  /// code: "yo", name: "Yoruba", nativeName: "Yorùbá"
  yo("yo", "Yoruba", "Yorùbá"),

  /// code: "za", name: "Zhuang|Chuang", nativeName: "Saɯ cueŋƅ|Saw cuengh"
  za("za", "Zhuang|Chuang", "Saɯ cueŋƅ|Saw cuengh"),

  /// code: "zh", name: "Chinese", nativeName: "中文|Zhōngwén"
  zh("zh", "Chinese", "中文|Zhōngwén"),

  /// code: "zh_CN", name: "Chinese (simplified)", nativeName: "简体中文"
  zh_CN("zh_CN", "Chinese (simplified)", "简体中文"),

  /// code: "zh_TW", name: "Chinese (traditional)", nativeName: "繁體中文"
  zh_TW("zh_TW", "Chinese (traditional)", "繁體中文"),

  /// code: "zu", name: "Zulu", nativeName: "isiZulu"
  zu("zu", "Zulu", "isiZulu");

  /// Language code.
  ///
  /// Use [locale] if you want to get the current language as `Locale` because
  /// this [code] may contains country code.
  final String code;

  /// List of language name in English
  ///
  /// One `code` maybe present for multiple `name`
  List<String> get englishNames => _englishName.split('|');

  /// Get the first value from [englishNames]
  String get englishName => englishNames.first;

  /// Language name in English
  final String _englishName;

  /// List of language name in native
  ///
  /// One `code` maybe present for multiple `nativeName`
  List<String> get nativeNames => _nativeName.split('|');

  /// Get the first value from [nativeNames]
  String get nativeName => nativeNames.first;

  /// Language name in native
  final String _nativeName;

  /// Get current code as Locale
  Locale get locale {
    final localeList = code.split('_');
    if (localeList.length == 1) {
      return Locale(localeList[0]);
    }

    return Locale(localeList[0], localeList[1]);
  }

  /// Get the first value from [englishNames]
  String get name => englishName;

  /// Get [LanguageCodes] from string [code]. If no matching element is found,
  /// returns the result of [orElse]. If [orElse] is omitted, it defaults to
  /// throwing a [StateError]
  static LanguageCodes fromCode(
    String code, {
    LanguageCodes Function()? orElse,
  }) =>
      LanguageCodes.values.singleWhere(
        (element) => element.code == code,
        orElse: orElse,
      );

  /// Get [LanguageCodes] from [name]. If no matching element is found,
  /// returns the result of [orElse]. If [orElse] is omitted, it defaults to
  /// throwing a [StateError]
  @Deprecated('Use `fromEnglishName` instead')
  static LanguageCodes fromName(
    String name, {
    LanguageCodes Function()? orElse,
  }) =>
      LanguageCodes.fromEnglishName(name, orElse: orElse);

  /// Get [LanguageCodes] from [englishName]. If no matching element is found,
  /// returns the result of [orElse]. If [orElse] is omitted, it defaults to
  /// throwing a [StateError]
  static LanguageCodes fromEnglishName(
    String englishName, {
    LanguageCodes Function()? orElse,
  }) =>
      LanguageCodes.values.singleWhere(
        (element) => element.englishNames.contains(englishName),
        orElse: orElse,
      );

  /// Get [LanguageCodes] from [nativeName]. If no matching element is found,
  /// returns the result of [orElse]. If [orElse] is omitted, it defaults to
  /// throwing a [StateError]
  static LanguageCodes fromNativeName(
    String nativeName, {
    LanguageCodes Function()? orElse,
  }) =>
      LanguageCodes.values.singleWhere(
        (element) => element.nativeNames.contains(nativeName),
        orElse: orElse,
      );

  /// Get [LanguageCodes] from [Locale]. If no matching element is found,
  /// returns the result of [orElse]. If [orElse] is omitted, it defaults to
  /// throwing a [StateError]
  static LanguageCodes fromLocale(
    Locale locale, {
    LanguageCodes Function()? orElse,
  }) {
    LanguageCodes? code;
    if (locale.countryCode != null) {
      try {
        code = fromCode('${locale.languageCode}_${locale.countryCode}');
      } catch (_) {}
    }
    return code ?? fromCode(locale.languageCode, orElse: orElse);
  }

  /// LanguageCodes(code, name in English, name in native)
  ///   - [code]: language code
  ///   - [name]: name in English
  ///   - [nativeName]: name in native
  const LanguageCodes(this.code, this._englishName, this._nativeName);
}
