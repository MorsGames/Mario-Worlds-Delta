/// @description Generate 5 coins, then destroy

//Create a block coin
instance_create(x+8, y, obj_blockcoin);

//Decrement coins
coins--;

//If this object can generate more coins
if (coins > 0)
    alarm[0] = 8;
else {

    instance_create(x+8, y+8, obj_sparkle);
    instance_destroy();
    exit;
}

