/// @description Apply gravity

//Turn into a moving coin
with (instance_create(x+8, y, obj_coin_alt)) {

    hspeed = random_range(1, -1);
}

//Destroy
instance_destroy();

//Exit
exit;

