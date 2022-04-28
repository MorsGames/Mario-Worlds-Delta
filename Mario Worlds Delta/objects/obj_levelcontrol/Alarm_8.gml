/// @description Create a invisible swim object that covers the entire room

if (makeswim == true) {

    //Create swim object
    with (instance_create(-1000, -1000, obj_swim)) {
    
        image_xscale = (room_width/16)+1000;
        image_yscale = (room_height/16)+1000;
    }
    
    //Create fish foreground
    instance_create(0, 0, obj_fish);
}

//Create HUD
instance_create(0, 0, obj_hud);

