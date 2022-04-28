/// @description Contract

//Stop
alarm[3] = 32;

//Expand leftmost blocks
with (llb) {hspeed = 1; vspeed = 1* other.dir;}
with (lrb) {hspeed = 0.5; vspeed = 0.5* other.dir;}

//Expand rightmost blocks
with (rlb) {hspeed = -0.5; vspeed = -0.5* other.dir;}
with (rrb) {hspeed = -1; vspeed = -1* other.dir;}

