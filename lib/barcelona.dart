import 'package:flutter/material.dart';

class Barcelona extends StatelessWidget {
  const Barcelona({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('lEO MESSI BARCELONA WALLPAPERS'),
      ),
      body: Container(
        child: ListView(
          children: [
            Image.asset(
              'images/1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/3.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset('images/4.jpg', fit: BoxFit.cover),
            Image.asset('images/5.jpg', fit: BoxFit.cover),
          ],
        ),
      ),
    );
  }
}
