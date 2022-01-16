import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flame_svg/flame_svg.dart';



class TowerDefenseGame extends FlameGame{

  Future<void> onLoad() async {
   WidgetsFlutterBinding.ensureInitialized();
    Flame.device.fullScreen();

  Svg svgInstance = await Svg.load('game_map.svg');
  final android = SvgComponent.fromSvg(
      svgInstance,
      size: Vector2.all(100),
    );
    add(android);
  // SpriteComponent background = SpriteComponent()
  // ..sprite = await Sprite.load('gamemap.png')
  // ..size = size;
  //   add(background);
 // SpriteSheet spriteSheet = SpriteSheet(image: 'towerDefense_vector.svg', 22, 12);

  }
void main() {
  List<Object> enemyList = [];
  List<Object> towerList = [];
  List<Object> bulletList = [];
  
}



  @override
  void update(double dt) {
      super.update(dt); 
      
  }
}

