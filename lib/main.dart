import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/sprite.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:tower_defense/game/game.dart';
import 'package:path_provider/path_provider.dart';

import 'package:tower_defense/game/Tower.dart';
import 'package:tower_defense/game/Enemy.dart';
import 'package:tower_defense/game/Projectile.dart';
import 'package:tower_defense/game/SideMenu.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();

  runApp(GameWidget(game: TowerDefenseGame()));
}





// class MyGame extends FlameGame{
// Future<void> onLoad() async {
  
 
//   }
//   @override
//   void update(double dt) {
//       super.update(dt); 
      
//   }