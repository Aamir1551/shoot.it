import 'gameObject.dart';
import 'player.dart';
import 'dart:math';


abstract class Bullet extends GameObject {

  double _directionX, _directionY, speedX, speedY = 0;
  Bullet(double x, double y, int directionX, int directionY, int speedX, int speedY) : super(x, y) {

    double hyp = sqrt(directionX * directionX +  directionY * directionY);

    this._directionX = directionX / hyp;
    this._directionY = directionY / hyp;
  }

  void updateXY() {
    this.x += this._directionX;
    this.y += this._directionY;
  }

}

class PistolBullet extends Bullet {

  PistolBullet(double x, double y, int directionX, int directionY, int speedX, int speedY) : super(x, y, directionX, directionY, speedX, speedY);

  @override
  void render() {
    // TODO: implement render
  }

}

abstract class Weapon extends GameObject{

  bool _isPickedUp = false;
  int _ammo = 100;
  int _power = 5;

  Weapon(double x, double y, [int ammo = 100, int power = 5]) : super(x, y) {
    this._ammo = ammo;
    this._power = power;
  }

  bool get isPickedUp {
    return this._isPickedUp;
  }

  void pickUpWepon() {
    this._isPickedUp = true;
  }

  int get ammo {
    return this._ammo;
  }

  void updateAmmo(int dammo) {
    this._ammo += dammo;
  }

}


class Pistol extends Weapon {

  Pistol(double x, double y, [int ammo = 100]) : super(x, y, ammo) {}
  List<PistolBullet> pistolBullets = new List<PistolBullet>();

  @override
  void render() {
    // TODO: implement render
  }

}