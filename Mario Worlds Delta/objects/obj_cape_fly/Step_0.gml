/// @description  Manage cape logic

//Check if above a slope
slope = player_inslope();

//Kill off early if the player is not alive
if (!instance_exists(obj_playerparent))

    exit;

//If moving down
if (vspeed >= 0) {

    //Check for a semisolid
    var semisolid = collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+vspeed, obj_semisolid, 0, 0);
    
    //If there's a semisolid in position
    if (semisolid) 
    && (bbox_bottom < semisolid.yprevious+5) {
    
        //Snap above the platform
        y = semisolid.bbox_top-16;
        
        //Stop vertical movement
        vspeed = 0;
        gravity = 0;
        
        //Smash the ground or not
        event_user(0);
        
    }
    
    //Check for a semisolid ground
    var semisolid_moving = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+vspeed, obj_semisolid_moving, 1, 0);
    
    //If there's a semisolid in position
    if (semisolid_moving) 
    && (bbox_bottom < semisolid_moving.yprevious+5) 
    && (!collision_rectangle(bbox_left, bbox_top+4, bbox_right, semisolid_moving.y-1, obj_solid, 1, 0)) {
    
        //Snap above the platform
        y = semisolid_moving.bbox_top-16;
        
        //Stop vertical movement
        vspeed = 0;
        gravity = 0;
        
        //Smash the ground or not
        event_user(0);
    }   

}

//Embed the player into the slope if he is walking or sliding down to ensure correct slope physics
if (collision_rectangle(x-2, bbox_bottom+4, x+2, bbox_bottom+8, obj_slopeparent, 1, 0))
&& (!collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom-4, obj_slopeparent, 1, 0))
&& (gravity == 0)

    y += 4;

//Handle collision with slopes
if (collision_rectangle(x-2, bbox_bottom-4, x+2, bbox_bottom+vspeed, obj_slopeparent, 1, 0))
&& (!collision_rectangle(x-2, bbox_bottom-8, x+2, bbox_bottom-8, obj_slopeparent, 1, 0)) {

    //Steeper slope check
    steeper_l = collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom+vspeed-2, obj_slope_steeper_l, 1, 0);
    steeper_r = collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom+vspeed-2, obj_slope_steeper_r, 1, 0);
        
    //If the slope is a steeper one, do not allow jump through
    if (steeper_l) 
    || (steeper_r) {
    
        //If moving down
        if (vspeed >= 0) {
        
            //Stop vertical movement
            vspeed = 0;
            gravity = 0;
            
            //Reset values
            event_user(0);
        }          
        
        //Prevent the player from getting embed inside a slope
        while (collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom+vspeed-2, obj_slopeparent, 1, 0))
            y--;              
    }
    
    //Otherwise
    else {
                
        //If moving down
        if (vspeed >= 0) {
        
            //Stop vertical movement
            vspeed = 0;
            gravity = 0;
            
            //Reset values
            event_user(0);
        }
        
        //Prevent the player from getting embed inside a slope
        if (vspeed > -0.85)    
            while (collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom+vspeed-2, obj_slopeparent, 1, 0))
                y--;
    }
}

//Manage gravity
if (state == statetype.jump) {

    //Only have gravity while you are set to go downwards
    if (vspeed_goal == -1)

        gravity = 0.1;
        
    else
    
        gravity = 0;
        
} else if (gravity == 0) {

    //You're grounded, so look the part
    dive_index = 2;
    canfly = false;

}

//Allow diving
if (input_check(input.left))
|| (input_check(input.right))

    candive = 1;
    
//Allow the player to fly again
if (!input_check(input.left))
&& (!input_check(input.right))
&& (vspeed_goal == -1)
&& (state == statetype.jump)
|| (dive_index > 3)

    can_fly = true;
    
//If diving is allowed
if (candive == 1) {

    //If facing left and 'Left' is pressed
    if (input_check(input.left))
    && (xscale = -1)
    && (vspeed >= 0)
        smash = 1;
        
    //Otherwise, if facing right and 'Right' is pressed
    else if (input_check(input.right))
    && (xscale == 1)
    && (vspeed >= 0)
        smash = 1;
}

//Stop flying
if ((!collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom+vspeed, obj_slopeparent, 1, 0)
&& (gravity == 0)
&& (hspeed < 0.26) 
&& (hspeed > -0.26)))
|| (global.mount == 1)
|| (global.powerup < cs_pow_cape)
|| (!instance_exists(obj_playerparent))
|| (!input_check(input.action1))
|| (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0)) {

    instance_destroy();
    
    if (instance_exists(obj_playerparent)) {
    
        obj_playerparent.flying = 0;
        obj_playerparent.fly = 0;
        
    }
    
}
    
//Wall collision
event_user(3);

//If moving up...
if (vspeed < 0) {

    //...and the player bumps a ceiling
    if ((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0))
    || (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid_moving, 1, 0)))
    && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0)) {
    
        //If the player is jumping or climbing
        if (state == statetype.jump) {
        
            while ((collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_solid, 1, 0))
            || (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_solid_moving, 1, 0))
            || (collision_rectangle(bbox_left, bbox_top+1, bbox_right, bbox_top+1, obj_slopeparent_ceiling, 1, 0)))
                y++;
        }
        
        //Stop vertical movement
        vspeed = 0;
    }
}

//Increment speed when diving
if (smash == 1) 
&& (state == statetype.jump) {

    //If 'Left' is pressed
    if (input_check(input.left))
    && (hspeed > -obj_playerparent.hspeed_run_full)
    && (xscale == -1)
        hspeed -= 0.2;
        
    //Otherwise, if 'Right' is pressed
    else if (input_check(input.right))
    && (hspeed < obj_playerparent.hspeed_run_full)
    && (xscale == 1)
        hspeed += 0.2;
}
   
//If 'Left' or 'Right' is pressed while diving
if (hspeed != 0)
&& (state == statetype.jump) {
    
    //If the player is facing the proper flight direction,
    if ((input_check(input.left)) && (xscale == 1))
    || ((input_check(input.right)) && (xscale == -1)) {
    
        //And they can fly...
        if (vspeed_goal == -1)
        && (fly_cooldown <= 0)
        && (can_fly) {
        
            if (dive_index <= 0) {
        
                can_fly = false;
                event_user(1);
                
            } else {
            
                //Speed modification if smashing
                var smash_mod = 0;
                
                //Add the speed modification if you are currently smashing
                if (smash)
                
                    smash_mod = 0.125;
            
                //Change the dive index
                dive_index -= 0.2+smash_mod;
                
                //Limit the dive index
                if (dive_index <= 0)
                
                    dive_index = 0;
                
            }
            
        }
    
    } else {
    
        //N-n-n-nose dive!
        if ((((input_check(input.right)) && (xscale == 1))
        || ((input_check(input.left)) && (xscale == -1)))
        && (smash)
        && (vspeed_goal == -1)
        && (fly_cooldown <= 0)) {
        
            dive_index += 0.1725;
            charge_amount = img_index;
            
        }
    
        //Return to a normal position if you're not nose diving
        else if (vspeed >= -1) {
        
            if (vspeed_goal <= 3)
    
                dive_index += 0.1;
                
            else
            
                dive_index += 0.25;
                
            charge_amount = 0;
            smash = false;
            
        }
        
    }
        
}

//If the cape has been instructed to take flight
if (vspeed_goal != -1) {

    //*Insert cool cape sound Sammu did with their mouth*
    if (vspeed > vspeed_goal) {
    
        /*Different cape speeds depending on your goal, SMW uses a timer
        and disables gravity if I recall correctly*/
        vspeed -= 0.725+((abs(vspeed_goal)-2)*8);
    
    }
    
    //Adhere to the speed position and set up for next flight
    if (vspeed <= vspeed_goal) {
    
        vspeed = vspeed_goal;
        vspeed_goal = -1;
        fly_cooldown = 8;
        charge_amount = 0;
        smash = false;
        
    }

} else if (fly_cooldown > 0 && vspeed >= 0) {

    //Limit next cape flight for anti-spam measures
    fly_cooldown --;
    
}

//Cap vertical speed
if (vspeed > 2+(smash*2)) then vspeed = 2+(smash*2);

//Cap horizontal speed
if (hspeed > obj_playerparent.hspeed_run_full)
    hspeed = obj_playerparent.hspeed_run_full;
else if (hspeed < -obj_playerparent.hspeed_run_full)
    hspeed = -obj_playerparent.hspeed_run_full;

/* */
/// Manage player animation

//Set the sprite
sprite_index = player_cape();

//Set image index
img_index = round(dive_index);

//Don't open up too much
if (dive_index < 0)

    dive_index = 0;
    
//Maximum cape index to fall to
var max_index = 2;

//Modify the maximum index if you're smashing
if (smash)

    max_index = 5;

//Limit to the maximum index    
if (dive_index > max_index)

    dive_index = max_index;

/* */
/// Attach player to cape

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

     instance_destroy();
     exit;
     
} else {
    
    //Set the player position
    obj_playerparent.x = x;
    obj_playerparent.y = y;

    //Nullify player variables
    obj_playerparent.vspeed = vspeed;
    obj_playerparent.hspeed = hspeed;
    obj_playerparent.gravity = 0;
    
    //Hereby state
    state = obj_playerparent.state;
    
    //Hereby scale
    obj_playerparent.xscale = image_xscale;
    obj_playerparent.visible = true;
    
}

/* */
/*  */
