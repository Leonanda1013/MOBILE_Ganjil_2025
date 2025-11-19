import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:kamera_flutter/widget/filter_carousel.dart';
import 'widget/takepicture_screen.dart';

late List<CameraDescription> cameras;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();
  final firstCamera = cameras.first;

  // runApp(MyApp(camera: firstCamera));

  runApp(
     MaterialApp(
      home: PhotoFilterCarousel(camera: firstCamera,),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;

  const MyApp({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: TakePictureScreen(camera: camera),
    );
  }
}
