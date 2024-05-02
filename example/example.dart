import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:draw_text/draw_text.dart';

void main() async {
  // Load your image (replace with your actual image loading logic)
  final image = img.Image(height: 200, width: 200);

  // Define your text style
  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  // Draw text on the image with optional positioning
  final drawnImage =
      await draw_text(image, textStyle, "Hello, world!", x: 50, y: 100);

  // Use the drawnImage for further processing or display (replace with your logic)
  print("Image with text drawn!");
}
