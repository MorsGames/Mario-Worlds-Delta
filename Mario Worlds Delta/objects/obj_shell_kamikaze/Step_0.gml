/// @description Kamikaze Koopa

//Previous hspeed
prevhspeed = hspeed;

//Inherit event
event_inherited();

//If the direction changed, speed up
if (hspeed != prevhspeed) {

    //Play 'Bump' sound
    audio_stop_play_sound(snd_bump, 0, false);

    //Set the horizontal speed
    hspeed = sign(hspeed)*2;
        
    //Bump blocks
    instance_create(x-8, y, obj_blockbumper);
    
    //Create wall smash
    instance_create(x+(5*sign(prevhspeed)), y+8, obj_shellthump);
}
    
//Keep charging at the player
if (charge == 1) {

    //If there's no gravity
    if (gravity == 0) {
        
        //Follow the player
        if (!instance_exists(obj_playerparent))
        || (obj_playerparent.x < x) {
        
            hspeed -= 0.1;
            if (hspeed < -2)
                hspeed = -2;
        }
        else {
        
            hspeed += 0.1;
            if (hspeed > 2)
                hspeed = 2;
        }
    }
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

