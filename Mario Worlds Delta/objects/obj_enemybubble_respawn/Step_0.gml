/// @description Respawn

if (xstart < __view_get( e__VW.XView, 0 )-32)
|| (ystart < __view_get( e__VW.YView, 0 )-32)
|| (xstart > __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ))
|| (ystart > __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )) {

    //Create the new bubble
    with (instance_create(xstart, ystart, obj_enemybubble)) sprout = other.sprout;
    
    //Destroy
    instance_destroy();
}

