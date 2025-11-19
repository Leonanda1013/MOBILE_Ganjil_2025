import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:kamera_flutter/widget/filter_selector.dart';

@immutable
class PhotoFilterCarousel extends StatefulWidget {
  final CameraDescription camera;

  const PhotoFilterCarousel({super.key, required this.camera});

  @override
  State<PhotoFilterCarousel> createState() => _PhotoFilterCarouselState();
}

class _PhotoFilterCarouselState extends State<PhotoFilterCarousel> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
          (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    ),
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  void initState() {
    super.initState();
    _setupCamera();

    _initializeControllerFuture = _controller.initialize();
  }

  Future<void> _setupCamera() async {
    _controller = CameraController(
      widget.camera,
      ResolutionPreset.max,
      enableAudio: false,
    );

    _initializeControllerFuture = _controller.initialize();
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    _filterColor.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(child: _buildPhotoWithFilter()),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildFilterSelector(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoWithFilter() {
    return ValueListenableBuilder<Color>(
      valueListenable: _filterColor,
      builder: (context, color, _) {
        return Stack(
          fit: StackFit.expand,
          children: [
            FutureBuilder(
              future: _initializeControllerFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  return CameraPreview(_controller);
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),

            /// FILTER WARNA DI ATAS CAMERA
            Container(
              color: color.withOpacity(0.3),
            ),
          ],
        );
      },
    );
  }

  Widget _buildFilterSelector() {
    return FilterSelector(
      onFilterChanged: _onFilterChanged,
      filters: _filters,
    );
  }
}
