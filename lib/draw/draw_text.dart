import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'dart:ui' as ui;
import 'dart:typed_data';

/// Draw a string into [image]
/// at position [x],[y] with the given [textStyle].
/// If [x] is not specified, the string will be centered horizontally.
/// If [y] is not specified, the string will be centered vertically.

Future<img.Image> draw_text(img.Image image, TextStyle textStyle, String text,
    {int? x, int? y}) async {
  TextSpan textSpan = TextSpan(
    text: text,
    style: TextStyle(
      color: textStyle.color,
      fontSize: textStyle.fontSize,
      fontFamily: textStyle.fontFamily,
    ),
  );

  TextPainter textPainter = TextPainter(
    text: textSpan,
    textDirection: TextDirection.ltr,
  );
  textPainter.layout();

  ui.PictureRecorder recorder = ui.PictureRecorder();

  Canvas canvas = Canvas(recorder);
  textPainter.paint(canvas, const Offset(0, 0));
  ui.Picture picture = recorder.endRecording();

  final picimage = await picture.toImage(
      textPainter.width.toInt(), textPainter.height.toInt());

  ByteData? byteData =
      await picimage.toByteData(format: ui.ImageByteFormat.png);
  Uint8List pngBytes = byteData!.buffer.asUint8List();
  final textimg = img.decodeImage(pngBytes)!;

  var sx = x ?? (image.width / 2).round() - (textimg.width / 2).round();
  var sy = y ?? (image.height / 2).round() - (textimg.height / 2).round();

  img.compositeImage(image, textimg, dstX: sx, dstY: sy);
  return image;
}
