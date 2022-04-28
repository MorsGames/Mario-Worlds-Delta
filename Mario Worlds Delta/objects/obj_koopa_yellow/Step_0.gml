/// @description Yellow Koopa logic

//Previous hspeed
prevxscale = xscale;

//Inherit event from parent
event_inherited();

//If the direction changed
if (hspeed != prevxscale) 
&& (sprite_index != spr_koopa_yellow_turn) {

    //Set turning sprite
    sprite_index = spr_koopa_yellow_turn;
    
    //Animate it
    image_speed = 0.3;
    image_index = 0;
}

