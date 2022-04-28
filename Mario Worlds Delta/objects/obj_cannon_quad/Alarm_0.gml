/// @description Shoot a cannonball

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[0] = 1;
    exit;
}

//Otherwise, shoot a cannonball
else {

    //Play 'Cannon' sound
    audio_stop_play_sound(snd_explosion, 0, false);
    
    //Create cannons
    switch (angle) {
    
        //0, 180
        default: {
        
            with (instance_create(x+16, y, obj_cannon_ball)) motion_set(0, 1.5);
            with (instance_create(x, y-16, obj_cannon_ball)) motion_set(90, 1.5);
            with (instance_create(x-16, y, obj_cannon_ball)) motion_set(180, 1.5);
            with (instance_create(x, y+16, obj_cannon_ball)) motion_set(270, 1.5);
        } break;

        //45, 135, 225, 315
        case (45):
        case (135): 
        case (225): 
        case (315): {
        
            with (instance_create(x+16, y-16, obj_cannon_ball)) motion_set(45, 1.5);
            with (instance_create(x-16, y-16, obj_cannon_ball)) motion_set(135, 1.5);
            with (instance_create(x-16, y+16, obj_cannon_ball)) motion_set(225, 1.5);
            with (instance_create(x+16, y+16, obj_cannon_ball)) motion_set(315, 1.5);
        } break;
    }
    
    //Turn 45 degrees
    alarm[1] = 60;
}

