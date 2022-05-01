/// @description Level controller

/*
**  This item uses variable definitions
**
**  ini_section     = The ini section to check up
**  level_time      = The time limit in seconds (Optional)
**  cam_lock        = To lock the camera in position
**  underwater_level= To make the entire level swimable
*/

//Play music
alarm[0] = 2;
    
//The music of the level
levelmusic = noone;

//Is music disabled?
musicdisable = false;

//Is the P-Switch active?
switchon = 0;

//Is the Gray P-Switch active?
gswitchon = 0;

//Barrier
barrier = 0;
alarm[5] = 3;

//Fade in / fade out
ready = 0;

//Object to follow
follow = noone;

//Camera orientation
orientation = 1;

//P-SWitch warning
warning = 0;

//Gray P-Switch warning
swarning = 0;

//Reach last ground Y
floorY = 0;

//Parallax values for autoscroll
pos = 0;

// Create a invisible swim object that covers the entire room
if (underwater_level) {

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

// TODO: Depreciated

//Initialize tile animation system
animated_tile_init();

//Add tiles
animated_tile_add(tls_lava, .15,
                  tls_lava_animate_1,
                  tls_lava_animate_2,
                  tls_lava_animate_3,
                  tls_lava_animate_4);

/* */
/*  */
