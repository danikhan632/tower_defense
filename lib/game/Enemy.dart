import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:flame/sprite.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:tower_defense/game/Tower.dart';
import 'package:tower_defense/game/Enemy.dart';
import 'package:tower_defense/game/Projectile.dart';
import 'package:tower_defense/game/SideMenu.dart';
class Enemy {
  // gun turret in a 2d tower defense game
  int x_pos = 0;
  int y_pos = 0;
  int width = 0;
  int height = 0;
  int damage = 0;
  int HP = 0;
  double direction = 0;
  double speed = 0;
  int reward = 0;
  double range = 0;
  double fire_rate = 0;
  int damage_state = 0;

  //upgrades?
  String sprite_enemy = "";
  //create an string array of the enemy sprites
  List<Sprite> enemy_sprites = []; //damage states

//EnemgetFirstEnergy
  Enemy(this.x_pos, this.y_pos, this.width, this.height, this.damage, this.HP, this.direction, this.speed, this.reward, this.range, this.fire_rate, this.sprite_enemy, this.enemy_sprites);
  int getX(){return x_pos;}
  int getY(){return y_pos;}
  int getWidth(){return width;}
  int getHeight(){return height;}
  int getDamage(){return damage;}
  int getHP(){return HP;}
  double getDirection(){return direction;}
  double getSpeed(){return speed;}
  int getReward(){return reward;}
  double getRange(){return range;}
  double getFireRate(){return fire_rate;}
  String getSprite(){return sprite_enemy;}
  List<Sprite> getEnemySprites(){return enemy_sprites;}
  
  void setX(int x){x_pos = x;}
  void setY(int y){y_pos = y;}
  void setWidth(int w){width = w;}
  void setHeight(int h){height = h;}
  void setDamage(int d){damage = d;}
  void setHP(int h){HP = h;}
  void setDirection(double d){direction = d;}
  void setSpeed(double s){speed = s;}
  void setReward(int r){reward = r;}
  void setRange(double r){range = r;}
  void setFireRate(double f){fire_rate = f;}
  void setSprite(String s){sprite_enemy = s;}
  void setEnemySprites(List<Sprite> s){enemy_sprites = s;}
  void setDamageState(int d){damage_state = d;}
  int getDamageState(){return damage_state;}

  
}
