/// @description If the player can hold up this block

if (input_check_pressed(input.action1))
&& (collision_rectangle(bbox_left-2, bbox_top-1, bbox_right+2, bbox_bottom-2, obj_playerparent, 0, 0))
&& (can_hold() == true) {

    //Create the brick and force it to be held
    with (instance_create(obj_playerparent.x, obj_playerparent.y, obj_brick_throw_th)) {
    
        event_user(14);
    }

    //Destroy
    instance_destroy();
}

