/// @description Hop when stomping a enemy

//Ignore if climbing
if (state == statetype.climb)
exit;

//Set the vertical speed
vspeed = -jumpstrength_bounce;

//Boost jump
y--;

//If 'Action 1' is held
if (input_check(input.action0))
|| (input_check(input.action2))
    jumping = 1;
else
    jumping = 2;

