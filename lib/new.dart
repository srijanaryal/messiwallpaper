import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share/share.dart';

// Get the app document directory path
Future<String> _getAppDirectoryPath() async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

// Get the file path of the image
Future<String> _getImageFilePath() async {
  final appDirectoryPath = await _getAppDirectoryPath();
  return '$appDirectoryPath/images/1.jpg';
}

// Share the image
void _shareImage() async {
  final imageFilePath = await _getImageFilePath();
  Share.shareFiles([imageFilePath]);
}

// Display the image
class Imager extends StatefulWidget {
  const Imager({super.key});

  @override
  State<Imager> createState() => _ImagerState();
}

class _ImagerState extends State<Imager> {
  @override
  build(BuildContext context) async {
    return Container(
        child: GestureDetector(
      onTap: () {
        _shareImage();
      },
      child: Image.file(File(await _getImageFilePath())),
    ));
  }
}
