// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

class CustomImage extends StatefulWidget {
  const CustomImage({
    Key? key,
    this.width,
    this.height,
    required this.imageData,
  }) : super(key: key);

  final FFUploadedFile imageData;
  final double? width;
  final double? height;

  @override
  _CustomImageState createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      child: widget.imageData != null
          ? Image.memory(
              widget.imageData!.bytes!,
              fit: BoxFit.fitHeight,
            )
          : const SizedBox.shrink(),
    );
  }
}
