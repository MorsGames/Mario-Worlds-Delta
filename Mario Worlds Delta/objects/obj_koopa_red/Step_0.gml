/// @description Red Koopa logic

//Previous hspeed
prevhspeed = hspeed;

//Inherit event from parent
event_inherited();

//Turn on ledges
event_user(6);

//If the direction changed
if (hspeed != prevhspeed) 
&& (sprite_index != spr_koopa_red_turn) {

    //Set turning sprite
    sprite_index = spr_koopa_red_turn;
    
    //Animate it
    image_speed = 0.3;
    image_index = 0;
}

