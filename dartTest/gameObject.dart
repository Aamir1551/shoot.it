abstract class GameObject {

  double _x = 0;
  double _y = 0;

  GameObject(double x, double y) {
    this._x = x;
    this._y = y;
  }

  double get x {
    return _x;
  }

  double get y {
    return _y;
  }

  set x(double x) {
    this._x = x;
  } 

  set y(double y) {
    this._y = y;
  }


  void render();

}