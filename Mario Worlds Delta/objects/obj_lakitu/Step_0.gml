/// @description Lakitu logic

//Cloud image speed
cloud_index += 0.125;

//If activated, move towards player
if (activated == true) {

    if (instance_exists(obj_playerparent)) {
    
        if (x >= __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current ) / 2) + lurerange)) {
        
            //Change direction if on far right
            dir = 1;
            
        } 
        else if (x <= __view_get( e__VW.XView, view_current ) + ((__view_get( e__VW.WView, view_current ) / 2) - lurerange)) {
        
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
    
    //Fisher
    if (fishing = true) {
        
        //If a Lakitu, change the sprite
        if (type == 0)
            sprite_index = spr_lakitu_fish;
        
        if (instance_exists(bait)) {
        
            //Set bait X position
            if (xscale == -1)
                baitx = 20;
            else baitx = -20;
            
            var fishin_ymod = 0;
            if (type == 1)
                fishin_ymod = -2;
            
            if (instance_exists(obj_playerparent) && (type == 1)) {
            
                //If close to the player, bring the fishing rod closer if a Fishin' Boo
                if (distance_to_point(obj_playerparent.x,y) < 16) {
                
                    baitx = (baitx * .75);                    
                }                
            }
            
            //Set bait Y position for Lakitu and Fishin' Boo
            baity = 13 + fishin_ymod;
            
            //Where to put the bait on the bottom of the reel
            baitlength = -baity + sprite_get_height(spr_lakitu_reel) + sprite_get_yoffset(bait);
            
            //Handle position of bait
            bait.x = x - baitx;
            bait.y = y + baitlength;
            
        } 
        else {
        
            //Stop fishing and start throwin' stuff!
            fishing = false;
            
            //If a Lakitu, change sprite back - otherwise, get out
            if (type == 0)
                sprite_index = spr_lakitu;

            else {
            
                instance_destroy();
                exit;
            }
            
            //Start throwing
            if (canthrow == false)
                canthrow = true;            
        }        
    }    
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
        
        //If set to be a fisher, start fishing, otherwise start throwing Spinies
        if fisher = true
            fishing = true;
        else if (canthrow == false)
            canthrow = true;        
    }    
}

//If not a fisher, don't have bait and start throwing
if (fisher = false) && (instance_exists(bait)) && (activated) {

    //Destroy bait if not needed anymore
    with bait instance_destroy();
    
    //Start throwing
    if (canthrow == false)
        canthrow = true;
    
    //If not a normal Lakitu, get out
    if (type == 1)
        instance_destroy();    
}

if (activated) && (canthrow == true) {

    alarm[0] = irandom_range(100,350);    
    canthrow = 2;    
}

