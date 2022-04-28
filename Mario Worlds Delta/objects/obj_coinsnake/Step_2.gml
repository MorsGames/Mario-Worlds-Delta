/// @description Coin Snake logic

//Use appropiate sprite
switch (obj_levelcontrol.switchon) {

    //On
    case (1): sprite_index = spr_qblock_empty; break;
    
    //Off (Default)
    default: sprite_index = spr_coin_gold; break;
}

//Change direction based on input
if ((input_check(input.up)) && (direction != 270))
    nextdir = 90;
else if ((input_check(input.down)) && (direction != 90))
    nextdir = 270;
else if ((input_check(input.left)) && (direction != 0))
    nextdir = 180;
else if ((input_check(input.right)) && (direction != 180))
    nextdir = 0;

