import 'package:flutter_test/flutter_test.dart';

import 'package:thai_to_eng_keyboard/thai_to_eng_keyboard.dart';

void main() {
  test('Convert Thai to English', () {
    expect(convertThaiToEnglish('สวัสดี'), 'l;ylfu');
    expect(convertThaiToEnglish('123'), '123');
  });

  test('Convert Thai to English with Custom Map Conversion', () {
    final customMap = {'ส': 'i', 'ว': 'z','ั': 'o','ด': 'u', 'ี': 't'};
    expect(convertThaiToEnglishWithCustomMap('สวัสดี', customMap), 'izoiut');
  });

  test('Convert Thai to English with Custom Map Conversion', () {

    expect(convertThaiToEnglishWithCustomMap('สวัสดี', {}), 'สวัสดี');

    final customMap = {'':''};
    expect(convertThaiToEnglishWithCustomMap('สวัสดี', customMap), 'สวัสดี');
  });
}
