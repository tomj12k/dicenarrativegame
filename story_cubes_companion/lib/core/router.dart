import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/recognition/s1_camera.dart';
import '../features/recognition/s2_review.dart';
import '../features/presets/s3_preset_builder.dart';
import '../features/story/s4_generate.dart';
import '../features/csm/s5_csm.dart';
import '../features/history/s6_history.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: '/s1',
    routes: [
      GoRoute(path: '/s1', builder: (context, state) => const S1CameraDetect()),
      GoRoute(path: '/s2', builder: (context, state) => const S2ReviewCorrect()),
      GoRoute(path: '/s3', builder: (context, state) => const S3PresetBuilder()),
      GoRoute(path: '/s4', builder: (context, state) => const S4Generate()),
      GoRoute(path: '/s5', builder: (context, state) => const S5ContinuousStory()),
      GoRoute(path: '/s6', builder: (context, state) => const S6History()),
    ],
  );
}
