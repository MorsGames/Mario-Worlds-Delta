/// @description Set up conveyor movement

var modifier_r = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier_belt_right, 0, 0);
if (modifier_r) {

    //Toggle direction
    if (toggle == 1)
    && (global.onoff_block == 1)
        image_speed = -0.5;
    else
        image_speed = 0.5;
}
var modifier_rf = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier_belt_right_fast, 0, 0);
if (modifier_rf) {

    //Toggle direction
    if (toggle == 1)
    && (global.onoff_block == 1)
        image_speed = -1;
    else
        image_speed = 1;
}
var modifier_l = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier_belt_left, 0, 0);
if (modifier_l) {

    //Toggle direction
    if (toggle == 1)
    && (global.onoff_block == 1)
        image_speed = 0.5;
    else
        image_speed = -0.5;  
}
var modifier_lf = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_modifier_belt_left_fast, 0, 0);
if (modifier_lf) {

    //Toggle direction
    if (toggle == 1)
    && (global.onoff_block == 1)
        image_speed = 1;
    else
        image_speed = -1;   
}

