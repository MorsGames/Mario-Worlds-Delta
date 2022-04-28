/// @description Generate a new lakitu and destroy bait if killed

//Destroy bait if it exists
if (instance_exists(bait)) {

    with (bait) instance_destroy();
}

//Generate a new lakitu
with (instance_create(0, ystart, obj_enemy_tick)) 
    sprite_index = spr_lakitu;

