import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:messi/Welcome.dart';
import 'package:messi/barcelona.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image_network/image_network.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart';
import "Welcome.dart";

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Barcelona(),
    );
  }
}

// class Welcome extends StatefulWidget {
//   const Welcome({Key? key}) : super(key: key);

//   @override
//   State<Welcome> createState() => _WelcomeState();
// }

// void saveImage(String imageUrl) async {
//   final status = await Permission.storage.request();
//   if (status.isGranted) {
//     final response = await get(Uri.parse(imageUrl));
//     final bytes = response.bodyBytes;
//     final directory = await getExternalStorageDirectory();
//     final timestamp = DateTime.now().millisecondsSinceEpoch;
//     final path = '${directory!.path}/Image_$timestamp.jpg';
//     await File(path).writeAsBytes(bytes);
//     final result = await GallerySaver.saveImage(path);
//     print(result);
//   }
// }

// final imageUrl =
//     'https://drive.google.com/uc?id=1fXIFSQ6FdYOsaO_QkzCxMrzJECYUwfIx';

// class _WelcomeState extends State<Welcome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text('Lionel  Wallapaer'),
//         backgroundColor: Colors.purple,
//       ),
//       body: Column(
//         // crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Image.network(imageUrl),
//           ElevatedButton(
//               onPressed: () {
//                 saveImage(imageUrl);
//               },
//               child: Text('Download Image'))
//         ],
//       ),
//     );
//   }
// }
