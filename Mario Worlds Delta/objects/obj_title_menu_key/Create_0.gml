/// @description Key Configuration Object

//Key variables
key = 0;
keyText = "";
keyDefault = vk_escape;

//Delay key press
ready = 0;
alarm[0] = 2;

//Create a screenshot
back = background_create_from_surface(application_surface,0,0,room_width,room_height,0,0);

//Stop movement on all backgrounds
for (var i=0; i<8; i++) {

    temp_h[i] = __background_get( e__BG.HSpeed, i );
    temp_v[i] = __background_get( e__BG.VSpeed, i );
    __background_set( e__BG.HSpeed, i, 0 );
    __background_set( e__BG.VSpeed, i, 0 );
}

//Deactivate the instances.
instance_deactivate_all(1);

//Activate all
instance_activate_object(obj_controller);

