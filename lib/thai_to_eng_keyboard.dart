/// Default a Thai string to its English keyboard mapping.
const Map<String, String> thaiToEngMap = {
  'ๅ': '1',
  '+': '!',
  '๑': '@',
  '/': '2',
  '-': '3',
  '๒': '#',
  'ภ': '4',
  '๓': '\$',
  'ถ': '5',
  '๔': '%',
  'ุ': '6',
  'ู': '^',
  'ึ': '7',
  '฿': '&',
  'ค': '8',
  '๕': '*',
  'ต': '9',
  '๖': '(',
  'จ': '0',
  '๗': ')',
  'ข': '-',
  '๘': '_',
  'ช': '=',
  '๙': '+',
  'ๆ': 'q',
  '๐': 'Q',
  'ไ': 'w',
  '"': 'W',
  'ำ': 'e',
  'ฎ': 'E',
  'พ': 'r',
  'ฑ': 'R',
  'ะ': 't',
  'ธ': 'T',
  'ั': 'y',
  'ํ': 'Y',
  'ี': 'u',
  '๊': 'U',
  'ร': 'i',
  'ณ': 'I',
  'น': 'o',
  'ฯ': 'O',
  'ย': 'p',
  'ญ': 'P',
  'บ': '[',
  'ฐ': '{',
  'ล': ']',
  '`': '`',
  'ฃ': '\\',
  'ฅ': '`',
  'ฟ': 'a',
  'ฤ': 'A',
  'ห': 's',
  'ฆ': 'S',
  'ก': 'd',
  'ฏ': 'D',
  'ด': 'f',
  'โ': 'F',
  'เ': 'g',
  'ฌ': 'G',
  '้': 'h',
  '็': 'H',
  '่': 'j',
  '๋': 'J',
  'า': 'k',
  'ษ': 'K',
  'ส': 'l',
  'ศ': 'L',
  'ว': ';',
  'ซ': ':',
  'ง': '\'',
  '.': '"',
  'ผ': 'z',
  '(': 'Z',
  'ป': 'x',
  ')': 'X',
  'แ': 'c',
  'ฉ': 'C',
  'อ': 'v',
  'ฮ': 'V',
  'ิ': 'b',
  'ฺ': 'B',
  'ท': 'n',
  '์': 'N',
  'ม': '`',
  'ฒ': '<',
  'ใ': '.',
  'ฬ': '>',
  'ฝ': '/',
  'ฦ': '?'
};

/// Converts a Thai string to its English keyboard equivalent.
String convertThaiToEnglish(String input) {
  final buffer = StringBuffer();

  /// Map each character in the input to its English equivalent.
  for (var char in input.split('')) {
    /// Convert the Thai character to its English equivalent using the map.
    /// If the character is not in the map, keep it unchanged.
    buffer.write(thaiToEngMap[char] ?? char);
  }

  return buffer.toString();
}

/// Converts a Thai string to its English keyboard equivalent using a custom mapping.
String convertThaiToEnglishWithCustomMap(
    String input, Map<String, String>? customMap) {
  /// Ensure the customMap is not null and contains valid entries.
  final activeMap =
      (customMap != null && customMap.isNotEmpty) ? customMap : {};

  final buffer = StringBuffer();

  /// Map each character in the input to its custom equivalent or keep the original if not mapped.
  for (var char in input.split('')) {
    buffer.write(activeMap[char] ?? char);
  }

  return buffer.toString();
}
