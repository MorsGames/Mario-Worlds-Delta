/// @description Large Blue Switch Block

//Do not animate
image_speed = 0;

//If the blue switch has been pressed, become solid
if (global.palaceswitch_b = true) {

    with (instance_create(x, y, obj_solid)) {
    
        image_xscale = 2;
        image_yscale = 2;
    }
}
else
    image_index = 1;

