/// @description Huckit crab logic

//Inherit event from parent
event_inherited();

//Set only when not throwing a rock
if (sprite_index != spr_huckitcrab_throw) {
    
    //Set the facing direction
    if (!instance_exists(obj_playerparent))
    || (obj_playerparent.x < x)
        xscale = -1;
    else
        xscale = 1;
}

//Otherwise, if jumping
else if (jump) && (vspeed > 0){

    //Set the sprite
    sprite_index = spr_huckitcrab;
    
    //Animate
    image_speed = 0.15;
    
    //Stop jump
    jump = 0;
    
    //Throw the previously created ball
    with (instance_create(x+11*sign(xscale), y-7, obj_huckitcrab_rock)) {
    
        hspeed = 1.75*sign(other.xscale);
        xscale = 1*sign(other.xscale);
    }    
    
    //Prepare another rock
    alarm[0] = 60+round(random(120));
}

