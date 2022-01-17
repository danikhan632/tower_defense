import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:tower_defense/game/Enemy.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flame_svg/flame_svg.dart';

class TowerDefenseGame extends FlameGame {
  SpriteComponent test = new SpriteComponent();
  List<Enemy> enemyList = [];
  List<Object> towerList = [];
  List<Object> bulletList = [];
 
  SpriteComponent dummy = new SpriteComponent();
  Future<void> onLoad() async {
    WidgetsFlutterBinding.ensureInitialized();
    Flame.device.fullScreen();

   

    SpriteComponent background = SpriteComponent()
      ..sprite = await Sprite.load('gamemap.png')
      ..size = size;
    add(background);

    final imageInstance = await images.load('sprite_sheet.png');
    SpriteSheet spriteSheet = SpriteSheet.fromColumnsAndRows(
        image: imageInstance, columns: 22, rows: 13);
  

  enemyList.add( Enemy(SpriteComponent()..sprite = spriteSheet.getSprite(10, 17)));
    
  }

  void main() {}

  @override
  void update(double dt) {
    super.update(dt);
    enemyList.forEach((enemy) {
      enemy.update(dt);
    });

   
  }
}

//  @override
//   void update(double dt) {
//     super.update(dt);
//     test..angle = test.angle + 0.001;
//   }


    // dummy
    //   ..position =
    //       Vector2(dummy.position.x + move_x, dummy.position.y + move_y);
   // print(dummy.position);

/**
 * turn map at 720p
 * leg1: 0 degrees , y= 310,x 0 to 180
 * leg1: 0.785398*2  degrees , y= 310 to 510,x =220
 * 
 * 
 * 
 *  if (dummy.position.x > 220.0 &&
        dummy.position.y == 315.0 &&
        first == false) {
      move_x = 0.0;
      move_y = 0.5;
      first = true;
      dummy..angle = 0.785398 * 2;
    } else if (dummy.position.y > 530.0 &&
        dummy.position.x == 220.5 &&
        first == true &&
        second == false) {
      move_x = 0.5;
      move_y = 0.0;
      second = true;
      dummy..angle = 0.0;
    } else if (dummy.position.x > 560 &&
        dummy.position.y == 530.5 &&
        first == true &&
        second == true &&
        third == false) {
      move_x = 0.0;
      move_y = -0.5;
      third = true;
      dummy..angle = 0.785398 * 2;
    }
 */