#include "GameSprite.h"

GameSprite::GameSprite(double x, double y) {
    this->x = x;
    this->y = y;
}


int GameSprite::getX() {
    return this->x;
}

int GameSprite::getY() {
    return this->y;
}