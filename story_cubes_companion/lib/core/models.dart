import 'dart:typed_data';
import 'dart:ui';

enum DieIcon { mushroom, sunrise, cauldron, crown, shield, angryFace, beans, crow, helmet }

class DieRead {
  DieRead({
    required this.index,
    required this.bbox,
    this.label,
    required this.confidence,
    this.crop,
  });

  final int index;
  final Rect bbox;
  final DieIcon? label;
  final double confidence;
  final Uint8List? crop;
}

class Roll {
  Roll({
    required this.rollId,
    required this.ts,
    required this.dice,
    this.sourceImagePath,
    required this.setId,
  });

  final String rollId;
  final DateTime ts;
  final List<DieRead> dice;
  final String? sourceImagePath;
  final String setId;
}

class Style {
  Style({
    required this.minWords,
    required this.maxWords,
    required this.realism,
    required this.genre,
    required this.tone,
    required this.audience,
    required this.pov,
    required this.tense,
    required this.structure,
  });

  final int minWords;
  final int maxWords;
  final double realism;
  final String genre;
  final String tone;
  final String audience;
  final String pov;
  final String tense;
  final String structure;
}

class Roles {
  Roles({required this.roleByIcon});
  final Map<DieIcon, String> roleByIcon;
}

class Preset {
  Preset({required this.id, required this.name, required this.style, required this.roles});
  final String id;
  final String name;
  final Style style;
  final Roles roles;
}

class StoryChapter {
  StoryChapter({
    required this.number,
    required this.text,
    required this.summary,
    required this.icons,
    required this.openThreadsDelta,
  });

  final int number;
  final String text;
  final String summary;
  final List<DieIcon> icons;
  final List<String> openThreadsDelta;
}

class StoryBible {
  StoryBible({required this.characters, required this.places, required this.rules, required this.openThreads});
  final Map<String, String> characters;
  final Map<String, String> places;
  final List<String> rules;
  final List<String> openThreads;
}

class ContinuousStory {
  ContinuousStory({
    required this.storyId,
    required this.title,
    required this.style,
    required this.bible,
    required this.chapters,
  });

  final String storyId;
  final String title;
  final Style style;
  final StoryBible bible;
  final List<StoryChapter> chapters;
}

class GenerationRequest {
  GenerationRequest({
    required this.roll,
    required this.style,
    required this.roles,
    required this.continuous,
    this.storyId,
    required this.mode,
  });

  final Roll roll;
  final Style style;
  final Roles roles;
  final bool continuous;
  final String? storyId;
  final String mode; // "full" | "prompt"
}
