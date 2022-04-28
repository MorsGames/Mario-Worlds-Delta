/// @description Boo "Buddy" logic

//Remember state
movenowprev = movenow;

//If the player does exist and it's not looking at him.
if (movenow == 1)
&& (instance_exists(obj_playerparent)) {

    //If the player is at the right
    if (obj_playerparent.x > x+8) {
    
        hspeed += 0.03;
        xscale = 1;
    }
    
    //Otherwise, if the player is at the left
    else if (obj_playerparent.x < x-8) {
    
        hspeed -= 0.03;
        xscale = -1;
    }
    
    //If the player is below
    if (obj_playerparent.y > y+8)
        vspeed += 0.03;
    
    //Otherwise, if it's above
    else if (obj_playerparent.y < y+8)
        vspeed -= 0.03;
}

//Otherwise, stop moving
else {
    
    //Slow down till it stops
    speed = max(0,abs(speed)-0.03)*sign(speed);
    if (speed < 0.03)
        speed = 0;
}

//Check if the player is not looking at the boo
if (instance_exists(obj_playerparent)) {

    //If the player is not spinjumping
    if (obj_playerparent.jumpstyle != 1) {
    
        //If the player is at the right of the boo
        if (obj_playerparent.x > x+4) {
        
            //If the player is looking at the right, move
            if (obj_playerparent.xscale == 1)
                movenow = 1;
            else
                movenow = 0;
        }
        
        //Otherwise if the player is at the left of the boo
        else if (obj_playerparent.x < x-4) {
        
            //If the player is looking at the left, move
            if (obj_playerparent.xscale == -1)
                movenow = 1;
            else
                movenow = 0;
        }
        
        //Otherwise, do not move
        else
            movenow = 0;
    }
    
    //Otherwise, stop
    else    
        movenow = 0;
}

//Otherwise, do not move
else
movenow = 0;

//Cap speed
if (speed > 0.6) then speed = 0.6;
    
//Play 'Boo' sound if it was not moving
if (movenow == 1)
&& (movenowprev == 0)
    audio_stop_play_sound(snd_boo, 0, false);

