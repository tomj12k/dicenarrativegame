import 'package:flutter/material.dart';

class S6History extends StatelessWidget {
  const S6History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('History & Share')),
      body: const Center(child: Text('Previous rolls, presets, stories')),
    );
  }
}
