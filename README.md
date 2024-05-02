
# draw_text

The `draw_text` package provides an enhanced `draw_text` function for drawing text on images in Flutter applications. It Based on `Image` pacakge, offering additional features and customization options for text.

## Features

- **Customizable Text Styles**: Easily customize the text color, font, size, and more using the `TextStyle` class.
- **unicode support**: Support any unicode characters, thats means you can use any language and emojis in your text.
- **Easy Integration**: Seamlessly integrate with your Flutter projects and utilize the powerful `image` package under the hood.

## Getting Started

### Installation

To use the `draw_text` package, run the following command in your Flutter project:

```bash
flutter pub add draw_text
```

Alternatively, add the package to your `pubspec.yaml` file:

```yaml
dependencies:
  draw_text: ^0.1.0
```

Then, run `flutter pub get` to install the package.

### Import

Import the `draw_text` package in your Dart file:

```dart
import 'package:draw_text/draw_text.dart';
```

### Usage

Use the `draw_text` function to draw text on an image:

```dart
import 'package:image/image.dart' as img;
import 'package:draw_text/draw_text.dart';

Future<img.Image> draw_textOnImage(img.Image image, String text) async {
  TextStyle textStyle = TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontFamily: 'Roboto',
  );

  image = draw_text(image, textStyle, text);
  return image;
}
```

You can also specify the `x` and `y` coordinates for positioning the text:

```dart
// Draw text at specific coordinates
return draw_text(image, textStyle, text, x: 100, y: 200);
```

## Contributing

Contributions to the `draw_text` package are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on the project's GitHub repository.

## License

This package is licensed under the [MIT License](LICENSE).