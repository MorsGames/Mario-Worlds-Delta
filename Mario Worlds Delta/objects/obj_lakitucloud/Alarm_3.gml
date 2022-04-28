/// @description Destroy

//Create poof of smoke
with (instance_create(x, y, obj_smoke)) {

    sprite_index = spr_lakitu_cloud_destroy;
    image_speed = 0.1;
    image_index = 0;
}

//Destroy
instance_destroy();

