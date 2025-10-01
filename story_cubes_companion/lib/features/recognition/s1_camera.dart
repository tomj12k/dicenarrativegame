import 'package:flutter/material.dart';

class S1CameraDetect extends StatelessWidget {
  const S1CameraDetect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Capture & Detect')),
      body: const Center(child: Text('Camera preview and detection grid here')),
    );
  }
}
