/// @description Sleeping Galoomba logic

//Inherit event
event_inherited();

//If the galoomba is sleeping
if (charge == 0) 
&& (global.whistle == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player is nearby
        if (obj_playerparent.x > x-32)
        && (obj_playerparent.x < x+32) {
        
            //Play 'Chuck Whistle' sound
            audio_play_sound(snd_chuck_whistle, 0, false);
        
            //Set the chasing sprite
            sprite_index = spr_galoomba_red;
            
            //Set animation speed
            image_speed = 0.2;
            
            //Start chasing
            charge = 1;
            
            //Set vertical speed
            vspeed = -3;
        }
    }
}
else {

    //Previous hspeed
    prevhspeed = hspeed;
    
    //If the direction changed, speed up
    if (hspeed != prevhspeed) {
    
        hspeed = sign(hspeed)*1.5;
        if (gravity == 0) {
        
            vspeed = -1.5;
            y--;
        }
    }
        
    //Keep charging at the player
    if (charge == 1) {
    
        //If there's no gravity
        if (gravity == 0) {
            
            //Follow the player
            if (!instance_exists(obj_playerparent))
            || (obj_playerparent.x < x) {
            
                hspeed -= 0.0324;
                if (hspeed < -1.5)
                    hspeed = -1.5;
            }
            else {
            
                hspeed += 0.0324;
                if (hspeed > 1.5)
                    hspeed = 1.5;
            }
        }
    }
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

