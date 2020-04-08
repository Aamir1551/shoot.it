import 'gameObject.dart';
import 'weapon.dart';



class Player extends GameObject {

  List<Agent> army;
  Weapon defaultWeapon = new Pistol(0, 0);
  Weapon weaponOnHand;
  int score = 0;

  Player(double x, double y) :super(x, y) {
    defaultWeapon.pickUpWepon();
    this.weaponOnHand = defaultWeapon;
    this.army = new List(1);
    this.army[0] = new Agent(x, y);
    this.army[0].pickUpWeaon(this.weaponOnHand);
  }

  void render() {
    for(int i=0; i<army.length; i++) {
      army[i].render();
    }
  }

  void pickUpWeapon(Weapon newWeapon) {
    for(int i=0; i<this.army.length; i++) {
      this.army[i].pickUpWeaon(newWeapon);
    }
  }

}


class Agent extends GameObject{

  int _health = 100;
  int _color = 0;
  Weapon _weaponOnHand;

  Agent(double x, double y, {int color = 0, int initialHealth=100}) : super(x, y) {
    this._health = initialHealth;
    this._color = color;
  }

  void pickUpWeaon(Weapon newWeapon) {
    this._weaponOnHand = newWeapon;
  }

  int get health {
    return this._health;
  }

  int get color {
    return this._color;
  }

  void updateXY(double dx, double dy) {
    super.x += dx;
    super.y += dy;
  }

  void render() {
    //render circle object to canvas
    this._weaponOnHand.render();
  } 

}