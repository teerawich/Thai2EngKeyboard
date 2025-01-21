# Thai2EngKeyboard

**A Flutter library for converting Thai text to English keyboard characters.**

`Thai2EngKeyboard` helps developers convert Thai text into English keyboard characters based on a Thai keyboard layout. It supports custom mappings and is efficient for real-time usage.

## Features

- ✅ Full Thai-to-English keyboard mapping.
- ✅ Custom mapping support.
- ✅ Lightweight and fast.

---

## 🚀 Installation

### Add to `pubspec.yaml`:
```yaml
dependencies:
  thai_to_eng_keyboard: ^1.0.0
```

## Usage

Basic example:

```dart
import 'package:thai_to_eng_keyboard/thai_to_eng_keyboard.dart';

void main() {
  String thaiText = 'สวัสดี';
  String convertedText = convertThaiToEnglish(thaiText);
  print(convertedText); // Output: l;ylfu
}
```

Custom Mapping Example:

```dart
import 'package:thai_to_eng_keyboard/thai_to_eng_keyboard.dart';

void main() {
  final customMap = {'ส': 'i', 'ว': 'z','ั': 'o','ด': 'u', 'ี': 't'};
  String customText = convertThaiToEnglishWithCustomMap('สวัสดี', customMap);
  print(customText); // Output: izoiut
}
```

---

## Issues & Support

If you find any issues or have suggestions, please open an issue on GitHub.
