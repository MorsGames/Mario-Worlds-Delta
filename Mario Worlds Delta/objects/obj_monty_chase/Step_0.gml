/// @description Coffee Monty logic

//Previous hspeed
prevhspeed = hspeed;

//Inherit event
event_inherited();

//If the direction changed, speed up
if (hspeed != prevhspeed) {

    hspeed = sign(hspeed)*1.5;
    if (gravity == 0) {
    
        vspeed = -1;
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
        
            hspeed -= 0.0524;
            if (hspeed < -1.8)
                hspeed = -1.5;
        }
        else {
        
            hspeed += 0.0524;
            if (hspeed > 1.8)
                hspeed = 1.8;
        }
    }
}

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

