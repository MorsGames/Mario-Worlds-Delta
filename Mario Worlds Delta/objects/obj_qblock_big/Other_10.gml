/// @description Create a coin

//If the block holds more than 1 coin
if (sprout == itemtype.coin_multi) 
|| (sprout == itemtype.coin_multi_shroom) {

    //Engage timer
    if (timer == 0) {
    
        //Activate timer
        timer = 1;
        
        //End timer
        alarm[2] = 240;
    }
    
    //Increment coins
    coins++;
}

//Create a coin if any of the conditions below meet
if (sprout == itemtype.coin)
|| (sprout == itemtype.coin_multi) 
|| (sprout == itemtype.coin_multi_shroom)
|| ((sprout == itemtype.coin_star) && (instance_number(obj_invincibility) == 1))
    instance_create(x+16, ystart-16, obj_blockcoin);

