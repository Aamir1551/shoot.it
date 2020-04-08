#ifndef HEADER_FILE
#define HEADER_FILE
class GameSprite {

    protected:
        bool renderSprite = false;
        double x;
        double y = 0;


    public:
        virtual void render() = 0;

};

#endif