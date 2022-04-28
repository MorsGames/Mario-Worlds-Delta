/// @description Level controller

/*
**  This item uses creation code!
**
**  inisection      = The ini section to check up
**  leveltime       = The time limit in seconds (Optional)
**  camlock         = To lock the camera in position
**  makeswim        = To make the entire level swimable
*/

//Default values
inisection = "Overworld";
leveltime = 0;
camlock = false;
makeswim = false;

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

//Underwater init
alarm[8] = 2;

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
