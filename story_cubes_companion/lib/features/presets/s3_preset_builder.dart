import 'package:flutter/material.dart';

class S3PresetBuilder extends StatelessWidget {
  const S3PresetBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preset Builder')),
      body: const Center(child: Text('Global knobs and per-die roles')),
    );
  }
}
