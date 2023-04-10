import 'dart:ui';

import '../../../commom/Colors.dart';

enum ElementType {
  FIRE,
  WATER,
  GRASS,
  POISON,
  FLYING,
  BUG,
  ELECTRIC,
  FAIRY,
  GROUND,
  ROCK,
  PSYCHIC,
  STEEL,
  FIGHTING,
  DARK,
  GHOST,
  ICE,
  DRAGON,
  NORMAL
}

extension ElementTypeExtension on ElementType {
  String get title {
    switch (this) {
      case ElementType.FIRE:
        return "Fogo";
      case ElementType.WATER:
        return "Água";
      case ElementType.GRASS:
        return "Grama";
      case ElementType.POISON:
        return "Venenoso";
      case ElementType.FLYING:
        return "Voador";
      case ElementType.BUG:
        return "Inseto";
      case ElementType.ELECTRIC:
        return "Elétrico";
      case ElementType.FAIRY:
        return "Fada";
      case ElementType.GROUND:
        return "Terrestre";
      case ElementType.ROCK:
        return "Pedra";
      case ElementType.PSYCHIC:
        return "Psíquico";
      case ElementType.STEEL:
        return "Metal";
      case ElementType.FIGHTING:
        return "Lutador";
      case ElementType.DARK:
        return "Noturno";
      case ElementType.GHOST:
        return "Fantasma";
      case ElementType.ICE:
        return "Gelo";
      case ElementType.DRAGON:
        return "Dragão";
      case ElementType.NORMAL:
        return "Normal";
    }
  }

  String get image {
    switch (this) {
      case ElementType.FIRE:
        return 'assets/FireElement.svg';
      case ElementType.WATER:
        return "assets/WaterElement.svg";
      case ElementType.GRASS:
        return "assets/GrassElement.svg";
      case ElementType.POISON:
        return "assets/PoisonElement.svg";
      case ElementType.FLYING:
        return "assets/FlyingElement.svg";
      case ElementType.BUG:
        return "assets/BugElement.svg";
      case ElementType.ELECTRIC:
        return "assets/ThunderElement.svg";
      case ElementType.FAIRY:
        return "assets/FairyElement.svg";
      case ElementType.GROUND:
        return "assets/GroundElement.svg";
      case ElementType.ROCK:
        return "assets/RockElement.svg";
      case ElementType.PSYCHIC:
        return "assets/PsychicElement.svg";
      case ElementType.STEEL:
        return "assets/SteelElement.svg";
      case ElementType.FIGHTING:
        return "assets/FightElement.svg";
      case ElementType.DARK:
        return "assets/DarkElement.svg";
      case ElementType.GHOST:
        return "assets/GhostElement.svg";
      case ElementType.ICE:
        return "assets/IceElement.svg";
      case ElementType.DRAGON:
        return "assets/DragonElement.svg";
      case ElementType.NORMAL:
        return "assets/NormalElement.svg";
    }
  }

  String get icon {
    switch (this) {
      case ElementType.FIRE:
        return 'assets/icon/fireIcon.svg';
      case ElementType.WATER:
        return 'assets/icon/waterIcon.svg';
      case ElementType.GRASS:
        return 'assets/icon/grassIcon.svg';
      case ElementType.POISON:
        return 'assets/icon/poisonIcon.svg';
      case ElementType.FLYING:
        return 'assets/icon/flyingIcon.svg';
      case ElementType.BUG:
        return 'assets/icon/bugIcon.svg';
      case ElementType.ELECTRIC:
        return 'assets/icon/thunderIcon.svg';
      case ElementType.FAIRY:
        return 'assets/icon/fairyIcon.svg';
      case ElementType.GROUND:
        return 'assets/icon/groundIcon.svg';
      case ElementType.ROCK:
        return 'assets/icon/rockIcon.svg';
      case ElementType.PSYCHIC:
        return 'assets/icon/psychicIcon.svg';
      case ElementType.STEEL:
        return 'assets/icon/steelIcon.svg';
      case ElementType.FIGHTING:
        return 'assets/icon/fightIcon.svg';
      case ElementType.DARK:
        return 'assets/icon/darkIcon.svg';
      case ElementType.GHOST:
        return 'assets/icon/ghostIcon.svg';
      case ElementType.ICE:
        return 'assets/icon/iceIcon.svg';
      case ElementType.DRAGON:
        return 'assets/icon/dragonIcon.svg';
      case ElementType.NORMAL:
        return 'assets/icon/normalIcon.svg';
    }
  }

  Color get backgroundColor {
    switch (this) {
      case ElementType.FIRE:
        return ElementColors.fireBackground;
      case ElementType.WATER:
        return ElementColors.waterBackground;
      case ElementType.GRASS:
        return ElementColors.grassBackground;
      case ElementType.POISON:
        return ElementColors.poisonBackground;
      case ElementType.FLYING:
        return ElementColors.flyingBackground;
      case ElementType.BUG:
        return ElementColors.bugBackground;
      case ElementType.ELECTRIC:
        return ElementColors.electricBackground;
      case ElementType.FAIRY:
        return ElementColors.fairyBackground;
      case ElementType.GROUND:
        return ElementColors.groundBackground;
      case ElementType.ROCK:
        return ElementColors.rockBackground;
      case ElementType.PSYCHIC:
        return ElementColors.psychicBackground;
      case ElementType.STEEL:
        return ElementColors.steelBackground;
      case ElementType.FIGHTING:
        return ElementColors.fightingBackground;
      case ElementType.DARK:
        return ElementColors.darkBackground;
      case ElementType.GHOST:
        return ElementColors.ghostBackground;
      case ElementType.ICE:
        return ElementColors.iceBackground;
      case ElementType.DRAGON:
        return ElementColors.dragonBackground;
      case ElementType.NORMAL:
        return ElementColors.normalBackground;
    }
  }

  Color get typeColor {
    switch (this) {
      case ElementType.FIRE:
        return ElementColors.fireElement;
      case ElementType.WATER:
        return ElementColors.waterElement;
      case ElementType.GRASS:
        return ElementColors.grassElement;
      case ElementType.POISON:
        return ElementColors.poisonElement;
      case ElementType.FLYING:
        return ElementColors.flyingElement;
      case ElementType.BUG:
        return ElementColors.bugElement;
      case ElementType.ELECTRIC:
        return ElementColors.electricElement;
      case ElementType.FAIRY:
        return ElementColors.fairyElement;
      case ElementType.GROUND:
        return ElementColors.groundElement;
      case ElementType.ROCK:
        return ElementColors.rockElement;
      case ElementType.PSYCHIC:
        return ElementColors.psychicElement;
      case ElementType.STEEL:
        return ElementColors.steelElement;
      case ElementType.FIGHTING:
        return ElementColors.fightingElement;
      case ElementType.DARK:
        return ElementColors.darkElement;
      case ElementType.GHOST:
        return ElementColors.ghostElement;
      case ElementType.ICE:
        return ElementColors.iceElement;
      case ElementType.DRAGON:
        return ElementColors.dragonElement;
      case ElementType.NORMAL:
        return ElementColors.normalElement;
    }
  }
}
