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
    SpriteComponent tmp = SpriteComponent()
      ..sprite = spriteSheet.getSprite(10, 17);

    // Enemy dummy = Enemy(tmp);
    // enemyList.add(dummy);
    // // enemyList.forEach((enemy) {
    // //   add(enemy.getSprite());
    // //    print(enemy.getX());
    // // });
    // add(dummy.getSprite());
    test = SpriteComponent()
      ..sprite = spriteSheet.getSprite(10, 17)
      ..position = Vector2(10, 310)
      ..scale = Vector2(1, 1)
      ..angle = 0.0 //pi/2
      ..size = Vector2(150, 150)
      ..anchor = Anchor.center;
    add(test);
  }

  void main() {}

  double move_x = 0.3;
  double move_y = 0.0;
  List<bool> turns = [
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  void update(double dt) {
    super.update(dt);
    test..position =
        Vector2(test.position.x + move_x, test.position.y + move_y);
    print(test.position);
  }
}

//  @override
//   void update(double dt) {
//     super.update(dt);
//     test..angle = test.angle + 0.001;
//   }
// enemyList.forEach((enemy) {
    //   enemy.updatePosition(dt);
    //   // print(enemy.getX());
    // });

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

/**
 * if (test.position.x > 220.0 &&
        test.position.y == 315.0 &&
        turns[0] == false) {
      move_x = 0.0;
      move_y = 0.5;
      turns[0] = true;
      test..angle = 0.785398 * 2;
    } else if (test.position.y > 530.0 &&
        test.position.x == 220.5 &&
        turns[0] == true &&
        turns[1] == false) {
      move_x = 0.5;
      move_y = 0.0;
      turns[1] = true;
      test..angle = 0.0;
      // } else if (test.position.x > 560 &&
      //     test.position.y == 530.5 &&
      //     first == true &&
      //     second == true &&
      //     third == false) {
      //   move_x = 0.0;
      //   move_y = -0.5;
      //   third = true;
      //   test..angle = 0.785398 * 2;
      // }

    }
 */