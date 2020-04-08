import 'player.dart';
import 'dart:math';

class Client {


  int _clientID;

  Client() {

    var rng = new Random(); //rng = random number generator

    Player userPlayer = new Player(rng.nextDouble() * 100, rng.nextDouble() * 100);




    //request server for id
    //set ID to new value




    //until player is dead
    //send player data to server -- send each player new x, new y, and if mouse is down

    //while player is not dead:
    //recieve other game data from server
    //render player and the other data on screen
    //send player x,y and ither features of player to server(any data that the server may need to pass to other users, so they can render it)
    //when player shoots, send bullet info(what type of bullet it was, bullet x,y,speed)
    //use the rendering engine to render all data to screen(it takes in all agents on board, all bullets, all boxes)

  }

  void renderScreen() {

  }


}