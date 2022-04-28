/// @description Keep the ball activated and snap it.

//Keep the ball activated
instance_activate_object(myball);

//Snap to position.
myball.x = x;

//Update Ball distance
dist = bbox_top+16;

//If the ball exists
if (instance_exists(myball)) {

    //If the ball is moving down
    if (myball.vspeed > 0)     
        sprite_index = spr_ptooie;
        
    //Otherwise, if the ball is moving up
    else if (myball.vspeed < 0)
        sprite_index = spr_ptooie_blow;
}

