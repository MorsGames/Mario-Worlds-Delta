/// @description Warp Pipe (Branch)
/// @param Branch

/*
**  This item uses creation code!
**
**  mode               = Value to use (Pick from below)
**      0: Coins Collected
**      1: Time Left
**      2: Dragon Coins Collected
**
**  target_a           = First value to check
**  target_b           = Second value to check
**  target_c           = Last value to check
**
**  destination[0...2] = Destination room (Leave as is to not change room.)
**  exit_dir[0...2]    = Exit pipe direction
**  exit_id[0...2]     = Warp ID
*/

//Important variables
destination_real = noone;
exit_dir_real = cs_warp_right;
exit_id_real = -1;

//Mode
mode = 0;
check = 0;

//Coins collected
coins = 0;

//Target variables
target_a = 0;
target_b = 0;
target_c = 0;

//Branch warp variables
for (var i=0; i<3; i++) {

    destination[i] = noone;
    exit_dir[i] = cs_warp_right;
    exit_id[i] = -1;
}

/* */
/*  */
