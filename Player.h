#include "./GameSprite.h"
#ifndef PLAYER_H
#define PLAYER_H

class Player : public GameSprite {

    public:
        Player(double x, double y);
        virtual void updateXY(double dx, double dy);
        int getX();
        int getY();


};
#endif