/// @description Stop

//Contract
alarm[2] = 90;

//Stop leftmost blocks
with (llb) { vspeed = 0; hspeed = 0; move_snap(16, 16); }
with (lrb) { vspeed = 0; hspeed = 0; move_snap(16, 16); }

//Stop rightmost blocks
with (rlb) { vspeed = 0; hspeed = 0; move_snap(16, 16); }
with (rrb) { vspeed = 0; hspeed = 0; move_snap(16, 16); }

