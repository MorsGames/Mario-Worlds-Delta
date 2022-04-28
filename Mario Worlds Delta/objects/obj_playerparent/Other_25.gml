/// @description Reset values

//Allow the player to jump again
jumping = 0;

//End cape flight
flying = 0;

//End spin jump
jumpstyle = 0;

//End squat jump
if (squat_ready == 2) {

    squat_ready = 0;
    if (squat_time > 0)
        squat_time = 0;
}

//End floating
floatnow = 0;
if (floating > 0)
    floating = 0;

//Reset combos when not sliding down a slope
if (sliding == false) 
&& (hitcombo > 0)
    hitcombo = 0;

