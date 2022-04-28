/// @description Autoscroll logic

//Update speed
if (mypath != noone) {

    path_speed += 0.01;
    if (path_speed > maxspd)
        path_speed -= 0.01;
}
else {

    //If the area does not have a boss
    if (mode == 0) {
    
        hspeed += 0.01;
        if (hspeed > maxspd)
            hspeed = maxspd;
    }
}

//Airship floating effect.
if (airship) {

    airshipoffset += airshipspeed;
    if (airshipoffset > 0)
        airshipspeed -= 0.004;
    else
        airshipspeed += 0.004;
}

//Set wall variables
var wallleft, wallright;

//Wall collision.
if (instance_exists(obj_playerparent)) 
&& (obj_levelcontrol.barrier == true) {

    //Left wall collision.
    if (collision_rectangle(obj_playerparent.bbox_left-1, obj_playerparent.bbox_top+4, obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_solid, 1, 0))
    || (collision_rectangle(obj_playerparent.bbox_left-1, obj_playerparent.bbox_top+4, obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-1, obj_solid_moving, 1, 0))
        wallleft = 1;
    else
        wallleft = 0;
    
    //Right wall collision.
    if (collision_rectangle(obj_playerparent.bbox_right, obj_playerparent.bbox_top+4, obj_playerparent.bbox_right+1, obj_playerparent.bbox_bottom-1, obj_solid, 1, 0))
    || (collision_rectangle(obj_playerparent.bbox_right, obj_playerparent.bbox_top+4, obj_playerparent.bbox_right+1, obj_playerparent.bbox_bottom-1, obj_solid_moving, 1, 0))
        wallright = 1;
    else
        wallright = 0;
        
    //Prevents the player from going outside the view.    
    if (obj_playerparent.x <= __view_get( e__VW.XView, 0 )+8) {
    
        if (wallright) 
        && (candie == true) {
        
            instance_create(obj_playerparent.x, obj_playerparent.y, obj_player_dead);
            with (obj_playerparent) instance_destroy();
            exit;
        }
        else {
        
            obj_playerparent.x = __view_get( e__VW.XView, 0 )+8;
            if (obj_playerparent.hspeed < 0)
                obj_playerparent.hspeed = 0;
        }
    }
    if (obj_playerparent.x >= __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-8) {
    
        if (wallleft) 
        && (candie == true) {
        
            instance_create(obj_playerparent.x, obj_playerparent.y, obj_player_dead);
            with (obj_playerparent) instance_destroy();
            exit;
        }
        else {
        
            obj_playerparent.x = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-8;
            if (obj_playerparent.hspeed > 0)
                obj_playerparent.hspeed = 0;
        }
    }
    
    //Kill the player when below the view
    if (obj_playerparent.y > __view_get( e__VW.YView, 0 )+248) 
    && (candie == true) {
    
        instance_create(obj_playerparent.x, obj_playerparent.y, obj_player_dead);
        with (obj_playerparent) instance_destroy();
        exit;
    }
}

