/// @description Hurt the player

//If not thrown or falling
if (ready != 1)
exit;

//If the player is invulnerable
if (instance_exists(obj_invincibility)) {

    with (instance_create(x, y+8, obj_smoke)) sprite_index = spr_smoke_16;
    instance_destroy();
    exit;
}

//Hurt the player
event_inherited();

