/// @description Set the depth and vulnerability

switch (depth) {

    //If behind a fence, turn vulnerable
    case (11): {
    
        //Set the sprite
        sprite_index = spr_netkoopa_red
    
        //Set vulnerability
        vulnerable = 0;
        
        //Set stomp grade
        stomp = 0;
        
        //Set depth
        depth = -1;
    } break;
    
    //Otherwise if it's on front of a fence, turn invulnerable
    case (-1): {
    
        //Set the sprite
        sprite_index = spr_netkoopa_red_b;
    
        //Set vulnerability
        vulnerable = 100;
        
        //Set stomp grade
        stomp = -1;
        
        //Set depth
        depth = 11;
    } break;
}

//Animate
image_speed = 0.15;

//Choose new direction
switch (ready) {

    //Down
    case (2): {
    
        ready = 0;
        vspeed = 1;
    } break;
    
    //Right
    case (3): {
    
        ready = 1;
        hspeed = 1;
    } break;
    
    //Up
    case (0): {
    
        ready = 2;
        vspeed = -1;
    } break;
    
    //Left
    case (1): {
    
        ready = 3;
        hspeed = -1;
    } break;
}

//Can turn again
alarm[1] = 10;

