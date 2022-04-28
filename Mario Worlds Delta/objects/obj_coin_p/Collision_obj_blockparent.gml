/// @description Collect the coin

if (visible == 1)
&& (other.vspeed != 0) {

    with (instance_create(x, y, obj_blockcoin)) sprite_index = spr_coin_p;
    instance_destroy();
    exit;
}

