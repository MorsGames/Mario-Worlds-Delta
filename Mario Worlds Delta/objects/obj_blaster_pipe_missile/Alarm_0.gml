/// @description Move up if the player is not nearby or this cannon did not shot a bullet

//If a bullet was previously shot from this cannon
if (mybullet != noone) {

    alarm[0] = 1;
    exit;
}

//Otherwise, check from the player
else
    event_inherited();

