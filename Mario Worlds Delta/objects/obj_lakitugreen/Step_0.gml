/// @description Green Lakitu logic

//Cloud image speed
cloud_index += 0.125;

//If activated, move towards player
if (activated == true) {

    if (instance_exists(obj_playerparent)) {
    
        if (x >= __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current ) / 2) + 32)) {
        
            //Change direction if on far right
            dir = 1;
            
        } 
        else if (x <= __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current ) / 2) - 32)) {
        
            //Change direction if on far left
            dir = -1;            
        }
        
        //Face the player
        if (x > obj_playerparent.x)
            xscale = -1;
        else 
            xscale = 1;    
    }
    
    //Manage hspeed
    var accel = 0.0375;
    
    //Alternate acceleration for Fishin' Boo
    if (type == 1)
        accel = 0.0875;
    
    if (dir == 1) {

        hspeed -= accel;    
    } 
    else {

        hspeed += accel;    
    }
    
    //Keep the Lakitu from going too fast
    var hspcap = 2;
    
    if (hspeed >= 2)
        hspeed = hspcap;
        
    if (hspeed <= -2)
        hspeed = -hspcap;
        
    //Manage Lakitu Y position
    y = (ystart + sin((timer) * 0.04375) * 12);
    timer ++;
}

//Stay near view if activated
if (x >= __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current )) + 64)) {

    if (activated = true)
        x = __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current )) + 64);
    
} 
else if (x <= (__view_get( e__VW.XView, view_current )) - 64) {

    if (activated = true)
        x = __view_get( e__VW.XView, view_current ) - 64;
}

//If close enough to the player, start following
if (x < __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current )) + 64)) && (x > (__view_get( e__VW.XView, view_current )) - 64) {

    if (activated = false) {
    
        activated = true;
        canthrow = true;        
    }    
}

if (activated) && (canthrow == true) {

    alarm[0] = irandom_range(100,350);    
    canthrow = 2;    
}

