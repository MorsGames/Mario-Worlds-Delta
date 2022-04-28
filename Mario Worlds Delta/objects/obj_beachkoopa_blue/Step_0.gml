/// @description Holding logic

//If the kicked object does not exist or left the kicker away
if ((idd) 
&& ((!collision_rectangle(bbox_left-21, bbox_top-8, bbox_right+21, bbox_bottom+21, idd, 1, 0)) || (idd.held == 1))
&& (sprite_index != spr_beachkoopa_blue_kick)) {

    //Remove ID
    idd = noone;
    
    //Walk as normal
    alarm[2] = 20;
    hspeed = 0;
    
    //Set funny sprite
    sprite_index = spr_beachkoopa_blue;
    
    //Exit event
    exit;
}
else if (idd) {

    if (kicky > 1 && kicky < 4) {
        
        //Accelerate, if there is no gravity
        if (gravity == 0)
            hspeed += 0.11*xscale;
    
        //If it hits max speed
        if (hspeed > 0.8 && xscale == 1) 
        || (hspeed < -0.8 && xscale == -1) {
        
            //Stop
            hspeed = 0;
            
            //Kick
            alarm[3] = 15;
            
            //Change kick state 
            kicky = 999;
        } 
        
        //Dribble item 
        if ((idd.gravity == 0))
        && ((hspeed >= 0 && xscale == 1) || (hspeed <= 0 && xscale == -1)) 
        && (gravity == 0)
           idd.vspeed = -0.7;
        
        //Drag shell
        idd.hspeed = hspeed;
        
    }
    
    //Stop or slow shell animation
    if (idd.object_index == obj_shell_kicked) {
    
        //slow image speed animation
        idd.image_speed = max(0, abs(idd.image_speed)-0.007)*sign(idd.image_speed);
    }
    else {
    
        //Throwbrick case exempt
        if (idd.object_index != obj_brick_throw_th)
            {idd.image_speed = 0;
            idd.image_index = 0;}
    }
    
    //Move away from item
    if (initem) { 
    
        //Shift pixels depending on direction it wants to go
        x -= 3*dir;
        
        //Declare initem false if koopa is no longer overlapping the held item
        if (!collision_rectangle(bbox_left, bbox_top-7, bbox_right, bbox_bottom+4, idd, 0, 0))
            initem = false;
    }
}

///Blue Beach Koopa logic

//Inherit event from parent
event_perform_object(obj_physicsparent, ev_step, 0);

//Turn at enemies script
event_user(2);

//Turn on ledges
if (ready == 2) 
&& (kicky == 0) 
&& (slide == false)
    event_user(6);

//TEMPORARY item contact box length
var l = 3;

//Sliding logic
if (ready == 0) {
    
    //If the koopa is about to stop
    if (hspeed < 0.05) 
    && (hspeed > -0.05) {
        
        //Stop it
        hspeed = 0;
        
        //Allow movement
        ready = 1;
        
        //Start moving
        alarm[10] = 30;
    }
}

//Decelerate when sprite changes to sliding 
if (sprite_index == spr_beachkoopa_blue) 
    if (gravity == 0) then hspeed = max(0,abs(hspeed)-0.09)*sign(hspeed);

//If the koopa just came out from the shell, do not allow it to enter.
if (sprite_index == spr_beachkoopa_blue_walk)
&& (ready == 1)
&& (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom-4, obj_shell, 0, 0))
    ready = 2;

//Otherwise, check for holdable items to kick
if (ready == 2) && (!slide) {
    
    //Check for an object
    var obj = collision_rectangle(x+(boxl*sign(xscale)), bbox_top+boxt, x+(boxr*sign(xscale)), bbox_bottom+boxb, obj_holdparent, 0, 0);
    var kicked = collision_rectangle(x+(boxl*sign(xscale)), bbox_top+boxt, x+(boxr*sign(xscale)), bbox_bottom+boxb, obj_shell_kicked, 0, 0);
    
    //If there's an object in position
    if (obj) 
    && (obj.held == 0)
    && (kicky == 0)
    && (obj.sprite_height < 17){
    
        //If object isn't moving at all
        if (obj.hspeed == 0) {
        
            //Kick state
            kicky = 1; //type 1, pause
            
            //Get object ID
            idd = obj.id;
            
            //Check for overlapping item
            if (collision_rectangle(bbox_left-3, bbox_top-4, bbox_right+3, bbox_bottom+4, idd, 0, 0)) { 
                
                if (collision_line(x, y, x+23*xscale, y, obj_solid, 0, 0)) {
                
                    //Make the koopa change position
                    initem = true;
                    dir = 1*sign(xscale);
                }
                else idd.x = x+12*xscale;
            }
            
            //Stop
            hspeed = 0;
            image_index = 1;
            image_speed = 0;
            
            //PUNT
            alarm[3] = 15;
        }
        
        //Otherwise, accelerate 
        else {
        
            //Get object ID
            idd = obj.id;
            
            //Check for overlapping item
            if (collision_rectangle(bbox_left-3, bbox_top-4, bbox_right+3, bbox_bottom+4, idd, 0, 0)) { 
                
                if (collision_line(x, y, x+23*xscale, y, obj_solid, 0, 0)) {
                
                    //Make the koopa change position
                    initem = true;
                    dir = 1*sign(xscale);
                }
                else idd.x = x+12*xscale;
            }
            
            //Stop
            hspeed = idd.hspeed;
            image_index = 1;
            image_speed = 0;
            
            //Kick state
            kicky = 3; //type 3, weak force push
        } 
    }
    
    //If object is specifically a moving shell
    else if (kicked) 
    && (kicky == 0)
    && (kicked.sprite_height < 17)
    && (idd == noone) {
    
        //Get object ID
        idd = kicked.id;
        
        //Check for overlapping item
        if (collision_rectangle(bbox_left-2, bbox_top-4, bbox_right+2, bbox_bottom+4, idd, 0, 0)) { 
                
            if (collision_line(x, y, x+26*xscale, y, obj_solid, 0, 0)) {
            
                //Make the koopa change position
                initem = true;
                dir = 1*sign(xscale);
            }
            else idd.x = x+12*xscale;
        }
        
        //Stop
        hspeed = idd.hspeed;
        image_speed = 0; 
        image_index = 1;
        
        //Kick state
        kicky = 2; //type 2, force push
    }        
}

//Set facing direction
if (kicky == 0) {

    if (hspeed > 0)
        xscale = 1;
    else if (hspeed < 0)
        xscale = -1;   
}

///Sliding logic

//...If sliding
if (slide) {

    //Capfalling speed
    if (vspeed > 4)
        vspeed = 4;
        
    //Check for a slope
    slope_below = collision_rectangle(x-2, bbox_bottom+1, x+2, bbox_bottom+2, obj_slopeparent, 1, 0);
    
    //If there's a slope below the player
    if (slope_below)
        hspeed += (slope_below.add)/5;
    
    //Otherwise, if there's not a slope below
    else if (vspeed == 0) {
    
        //If the player is not overlapping a slippery surface
        if (!collision_rectangle(bbox_left, bbox_bottom-8, bbox_right, bbox_bottom+1, obj_iceparent, 1, 0)) {
        
            //Reduce player's horizontal speed
            hspeed = max(0, abs(hspeed)-0.05)*sign(hspeed);
            
            //Set horizontal speed to 0 when the horizontal speed hits value in 'dec'.
            if (hspeed < 0.05)
            && (hspeed > -0.05) {
            
                //Stop horizontal movement
                hspeed = 0;
                
                //Stop slide
                slide = false;
                
                //Animate 
                image_speed = 0.15;
                
                //Walk
                alarm[10] = 25;
            }
        }
        
        //Otherwise, if the player is overlapping a slippery surface
        else {
        
            //Reduce player's horizontal speed yet slower
            hspeed = max(0, abs(hspeed)-0.0125)*sign(hspeed);
            
            //Set horizontal speed to 0 when the horizontal speed hits value in 'dec/8'.
            if (hspeed < 0.0125)
            && (hspeed > -0.0125) {
            
                //Stop horizontal movement
                hspeed = 0;
                            
                //Stop slide
                slide = false;
                
                //Animate 
                image_speed = 0.15;
                
                //Walk
                alarm[10] = 25;
            }     
        }
    }
    
    //Cap horizontal speed
    //If the horizontal speed is greater than the target speed, cap it
    if (hspeed > 2.4)
        hspeed = 2.4;
        
    //Otherwise, if the horizontal speed is lower than the target speed, cap it
    if (hspeed < -2.4)
        hspeed = -2.4;
}

