/// @description Dry Bones logic

//Inherit event
event_inherited();

//Previous hspeed
prevhspeed = hspeed;

//Turn on ledges
event_user(6);

//Set the scale
if (hspeed > 0)
    xscale = 1;
else if (hspeed < 0)
    xscale = -1;
    
//If the direction changed
if (hspeed != prevhspeed) 
&& (sprite_index != spr_drybones_turn) {

    //Set turning sprite
    sprite_index = spr_drybones_turn;
    
    //Animate it
    image_speed = 0.3;
    image_index = 0;
}

