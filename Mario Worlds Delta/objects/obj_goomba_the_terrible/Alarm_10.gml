/// @description Move 

//If dead
if (hp < 1) {

    //Die
    state = 4;
}

//Otherwise...
else {

    //If not moving
    if (hspeed == 0) {
        
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x)
            hspeed = -1.5 / hp;
        else
            hspeed = 1.5 / hp;
    }
    
    //Animate 
    image_speed = 0.15;
    
    //Be vurnerable
    stomp = 0;
    
    //Normal sprite
    sprite_index = spr_goomba_hefty;
    
    //Normal state 
    state = 0;
}

