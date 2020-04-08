#include "GameSprite.h"
#include "Player.h"

Player::Player(double x, double y) : GameSprite(x, y) {};
void Player::updateXY(double dx, double dy) {
    this->x += dx;
    this->y += dy;
}

