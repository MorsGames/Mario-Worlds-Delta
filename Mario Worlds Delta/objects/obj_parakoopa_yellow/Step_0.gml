/// @description Yellow Koopa logic

//Inherit event from parent
event_inherited();

//Check for a moving shell
var mshell = collision_rectangle(x+(16*sign(xscale)), bbox_top, x+(24*sign(xscale)), bbox_bottom-4, obj_shell_kicked, 0, 0);

//If there's a shell in position and said shell is moving on the opposite direction
if (mshell) 
&& (mshell.hspeed != hspeed) {

    //Set the vertical speed
    if (swimming == 0)
        vspeed = -4;
    else
        vspeed = -2;
        
    //Boost jump
    y--;
}

//If jumping
if (vspeed < 0)
    anim += 0.3;
else
    anim = 0;

