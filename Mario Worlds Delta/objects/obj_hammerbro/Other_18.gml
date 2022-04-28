/// @description Manage swimming collision

//Check for water
var water = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0);

//If there's water
if (water)
&& (swimming == false) {

    //Make the object swim
    swimming = true;
    
    //Stop vertical movement
    if (vspeed > 0) {
        
        vspeed = 0;
        with (instance_create(round(bbox_left+bbox_right)/2, water.y-16, obj_smoke)) {
         
            sprite_index = spr_splash;
            image_speed = 0.3;
        }
    }
}

//Otherwise
else if (!water)
&& (swimming == true) {

    //Stop swimming
    swimming = false;
    
    //Create a splash effect
    if (vspeed < 0) {
        
        with (instance_create(round(bbox_left+bbox_right)/2, y-16, obj_smoke)) {
         
            sprite_index = spr_splash;
            image_speed = 0.3;
        }
    }
}

