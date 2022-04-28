/// @description Rain logic

//Destroy when colliding with any object
if (ready == 0) {

    //Destroy when colliding with any collision object
    if (place_meeting(x, bbox_bottom-1, obj_semisolid))
    || (place_meeting(x, bbox_bottom-1, obj_slopeparent))
    || (place_meeting(x, bbox_bottom-1, obj_swim)) {
    
        //Force path end
        path_end();
        
        //Start fading out
        ready = 1;
    }
}

//Otherwise
else {

    image_alpha -= 0.05;
    if (image_alpha < 0.05)
        instance_destroy();
}

//Destroy when outside the view
if (y > __view_get( e__VW.YView, view_current )+__view_get( e__VW.WView, view_current ))  
    instance_destroy();

