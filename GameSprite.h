#ifndef GameSprite_H
#define GameSprite_H

class GameSprite {

    protected:
        bool renderSprite = false;
        double x;
        double y = 0;


    public:
        GameSprite(double x, double y); 
        virtual void updateXY(double dx, double dy);
        int getX();
        int getY();

};
#endif