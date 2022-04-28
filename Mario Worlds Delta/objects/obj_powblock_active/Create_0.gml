/// @description Active Pow Block

//Trigger shockwave
with (obj_controller) {

    var_mouse_pos_x = other.x - __view_get( e__VW.XView, 0 );
    var_mouse_pos_y = other.y - __view_get( e__VW.YView, 0 );
    event_user(2);
}

//Do not animate
image_speed = 0;
image_index = 0;

//Combo
hitcombo = 0;

//Scale
scale = 1;

//Whether this object has done his job.
ready = 0;

