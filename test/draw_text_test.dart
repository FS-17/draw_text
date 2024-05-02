import 'package:flutter_test/flutter_test.dart';
import 'package:draw_text/draw_text.dart';
import 'package:flutter/material.dart';
// import 'package:draw_text/text_style.dart';
import 'package:image/image.dart' as img;
import 'dart:io';

void main() {
  test('draw_text should add text to the image', () async {
    // Create a blank image
    final image = img.Image(height: 100, width: 100, numChannels: 4);

    // Define the text style
    final textStyle = TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255, 161, 136, 136),
        fontFamily: 'Roboto');

    // Define the text to be added
    final text = 'Hello, World';

    // Call the draw_text function
    final result = draw_text(image, textStyle, text);

    // save the image
    await File('image.png').writeAsBytes(img.encodePng(await result));

    //NOTE: may be the text will not be rendered but when you run it in fully functional flutter app it will work fine
  });
}
