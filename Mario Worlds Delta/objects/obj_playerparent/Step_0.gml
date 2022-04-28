/// @description Player Logic

//Check if above a slope
slope = player_inslope();

//Decrement netsmack
netsmack--;

//If moving down
if (vspeed >= 0) {

    //Manage position in a slope
    if (collision_rectangle(bbox_left, bbox_bottom-3, bbox_right, bbox_bottom+3, obj_slopeparent, 0, 0)) {
    
        //manage slope
        with (obj_slopeparent) 
            slope_calculate();
    }
    
    //Manage position in a moving slope
    if (collision_rectangle(bbox_left, bbox_bottom-3, bbox_right, bbox_bottom+3, obj_slopeparent_move, 0, 0)) {
    
        //manage slope
        with (obj_slopeparent_move) 
            slope_calculate();
    }
}

//Do 'V-Pose' if clearing bonus level
if (cleared == 1) {

    //Disable controls
    control_enable = false;
    
    //Do not crouch
    crouch = 0;
    
    //Increment timer
    timer += 1000/60;
    
    //End state
    if (timer >= 2677)
    && (audio_is_playing(snd_bonusend)) {
    
        cleared = 2;
        alarm[4] = 220;
    }
}

else {
    
    //Decrement stun
    if (stun > 0) {
    
        //Decrement
        stun--;
        
        //Disable player controls
        control_enable = false;
    }
    else
        control_enable = true;
}

//Decrement boost
if (boostme > 0) {

    //Decrement
    boostme--;
    
    //Force decrement it when stopped
    if (abs(hspeed) < hspeed_run_full)
        boostme = 0;
}

//Reset flying state
if (flying > 0)
&& (state != statetype.jump) {

    flying = 0;
    if (fly < 0)
        fly = 0;
}

//If gravity is enabled
if (gravity_enable == true) {
    
    //If moving down
    if (vspeed >= 0) {
    
        //Check for a semisolid ground
        var semisolid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+vspeed, obj_semisolid, 1, 0);
        
        //IF that ground exists and the player is above it and there's no ghost floor below
        if (semisolid)
        && (((bbox_bottom < semisolid.yprevious+5) && (!slope)) || ((slope) && bbox_bottom <= semisolid.bbox_top))
        && (!collision_point(x, semisolid.y-1, obj_ghostfloor, 1, 0)) {
        
            //Snap above the platform
            y = semisolid.bbox_top-16;
            
            //Stop vertical movement
            vspeed = 0;
            gravity = 0;
            
            //Reset values
            event_user(15);            
        }
        
        //Check for a semisolid ground
        var ss_moving = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+vspeed, obj_semisolid_moving, 1, 0);
        
        //If that ground exists and the player is above it...
        if (ss_moving)
        && (((bbox_bottom < ss_moving.yprevious+5) && (!slope)) || ((slope) && bbox_bottom <= ss_moving.bbox_top)) {
        
            //Snap above the platform
            y = ss_moving.bbox_top-16;
            
            //Stop vertical movement
            vspeed = 0;
            gravity = 0;
            
            //Reset values
            event_user(15);
        }  
    }
    
    //If the player is not swimming
    if (swimming == 0) {
    
        //If the player is not sliding down a slope
        if (sliding == 0) {
        
            //If the player is not climbing
            if (state != statetype.climb) {
            
                //Perform default player physics
                player_behaviour();
                
                //Increment P-Meter
                player_meter();
            }
            
            //Otherwise, if the player is climbing
            else if (state == statetype.climb) {
            
                //Perform player climb physics
                player_behaviour_climb();
                
                //Stop running
                run = false;
                
                //Decrement P-Meter
                if (pmeter > 0)
                    pmeter--;
            }
        }
        
        //Otherwise, if the player is sliding down a slope
        else if (sliding == true) {
        
            //Perform player slide physics
            player_behaviour_slide();
            
            //Stop running
            run = false;
            
            //Decrement P-Meter
            if (pmeter > 0)
                pmeter--;
        }
    }
    
    //Otherwise, if the player is swimming
    else if (swimming == true) {
    
        //Perform player swim physics
        player_behaviour_swim();
        
        //Stop running
        run = false;
        
        //Decrement P-Meter
        if (pmeter > 0)
            pmeter--;
    }
}

//Collision with conveyor
var conveyor = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom+1, obj_conveyorparent, 0, 0);
if (conveyor)
&& (conveyor.image_speed != 0) {

    //If the conveyor is moving to the right
    if (conveyor.image_speed > 0) {
    
        if (!collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-4, obj_solid, 1, 0))
            x += conveyor.image_speed;
    }
    
    //Otherwise, if the conveyor is moving to the left
    else if (conveyor.image_speed < 0) {
    
        if (!collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-4, obj_solid, 1, 0))
            x += conveyor.image_speed;            
    }
}

//Collision with escalator
var escalator = collision_rectangle(bbox_left, bbox_bottom+4, bbox_right, bbox_bottom+8, obj_escalatorparent, 1, 0);
if (escalator)
&& (escalator.image_speed != 0) {

    //If the player is on the ground and it is not sliding down a slope, make it move.
    if (sliding == false)
    && (state != statetype.jump) {
    
        //Move horizontally
        x += escalator.add;
        
        //Ensure that the player has correct escalator collision
        if (collision_rectangle(bbox_left, bbox_bottom+4, bbox_right, bbox_bottom+8, escalator.myslope, 1, 0))
        && (!collision_rectangle(bbox_left, bbox_bottom-4, bbox_right, bbox_bottom-4, escalator.myslope, 1, 0))
            y++;
    }
}

//If moving right and the player bumps a wall to the right
if (hspeed > 0) {

    //Collision with non-moving solid objects
    if (collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-1, obj_solid, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_right, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))
            x--;
    }
    
    //Collision with moving solid objects
    else if (collision_rectangle(bbox_right, bbox_top+4, bbox_right+1, bbox_bottom-1, obj_solid_moving, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_right, bbox_top+4, bbox_right, bbox_bottom-1, obj_solid_moving, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid_moving, 0, 0))
            x--;
            
    }
}

//Otherwise, if moving left and the player bumps a wall to the left
else if (hspeed < 0) {

    //Collision with non-solid moving objects
    if (collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_left, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))    
            x++;
    }
    
    //Collision with moving solid object
    else if (collision_rectangle(bbox_left-1, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid_moving, 1, 0)) {
        
        //Stop horizontal speed
        hspeed = 0;    
        
        //Prevent the player from getting embed in the wall
        while (collision_rectangle(bbox_left, bbox_top+4, bbox_left, bbox_bottom-1, obj_solid_moving, 1, 0))
        && (!collision_point(x, bbox_top+4, obj_solid, 0, 0))    
            x++;            
    }
}

//If moving up...
if (vspeed < 0)
&& ((collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0))
|| (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid_moving, 1, 0)) 
|| (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0))) {
        
    //Check if there's a block on the way.
    var block = collision_rectangle(bbox_left, bbox_top-2, bbox_right, bbox_top-1, obj_blockparent, 0, 0);
    
    //If there's a block on the way.
    if (block) {
        
        //If the block has NOT been hit.
        if (block.ready == 0) 
        && (block.object_index != obj_woodblock) {
    
            //Trigger block events
            with (block) {
            
                //Block is hit
                ready = 1;
                
                //Set vertical speed
                vspeed = -2.25;
                alarm[0] = 4;
                
                //Perform block specific events
                event_user(0);
            }
        }
    }

    //If not flying
    if (flying == 0) {
    
        //Stop vertical speed
        vspeed = 0;
        
        //If the player is not climbing
        if (state != statetype.climb) {
        
            //Stop variable jumping
            jumping = 2;
            
            //Play 'Bump' sound
            if (!audio_is_playing(snd_bump))
                audio_stop_play_sound(snd_bump, 0, false);          
        }
    }
}

//If moving up and the player is flying
if (vspeed < 0)
&& (flying > 0) {

    //Hitbox
    var hbox = 1;
    
    //If there's a solid
    while (collision_rectangle(bbox_left, bbox_top-vspeed, bbox_right, bbox_top-hbox, obj_solid, 1, 0))
    || (collision_rectangle(bbox_left, bbox_top-vspeed, bbox_right, bbox_top-hbox, obj_solid_moving, 1, 0))
    || (collision_rectangle(bbox_left, bbox_top-vspeed, bbox_right, bbox_top-hbox, obj_slopeparent_ceiling, 1, 0))
        y += hbox;
}

//If the player is jumping
if (state == statetype.jump)
    while (collision_rectangle(bbox_left, bbox_top-vspeed, bbox_right, bbox_top-0.9, obj_slopeparent_ceiling, 1, 0))
        y += 0.9;

//If the player is not climbing
if (state != statetype.climb) {

    //If the player is not jumping and the controls are not disabled
    if (control_enable == true)
    && (sliding == false)
    && (state != statetype.jump) {
    
        //Makes the player crouch down if 'Down' is held
        if (input_check(input.down)) 
            crouch = true;
        
        //Otherwise, make the player get up
        else if (!input_check(input.down))        
            crouch = false;
    }
    
    //Manage player projectiles if 'Action 2' is pressed and the barrier is deactivated.
    if (input_check_pressed(input.action1))
    && (instance_number(obj_levelcontrol) > 0)
    && (obj_levelcontrol.barrier == true)
        alarm[10] = 1;
}

//Otherwise, if the player is climbing
else if (state == statetype.climb) {

    //Disable ducking
    crouch = false;
    
    //Disable spin jump
    jumpstyle = false;
}

//Check for a swimming surface
var water = collision_rectangle(bbox_left, y-1, bbox_right, y, obj_swim, 0, 0);

//If there's a swimming surface
if (water) 
&& (swimming == false) {

    //Halve current horizontal speed
    hspeed = hspeed/2;
    
    //Make the player swim
    swimming = true;
    
    //Disable ducking
    crouch = false;
    
    //Stop vertical movement
    gravity = 0;
    if (vspeed > 0) {
    
        vspeed = 0;
        with (instance_create(x, water.y-16, obj_smoke)) {
         
            sprite_index = spr_splash;
            image_speed = 0.3;
        }
    }
}

//Otherwise, if the player had enough swimming and wants to get out of water
else if (!water)
&& (swimming == true) {

    //If there's not a solid above
    if (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) 
    && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_slopeparent_ceiling, 1, 0)) {
    
        //If the player is moving up
        if (vspeed < 0)
        && (state == statetype.jump) {
        
            //If 'Action 0' is being held
            if (input_check(input.action0)) 
            || (input_check(input.action2)) {
            
                //Play 'Jump' sound
                audio_stop_play_sound(snd_jump, 0, false);
                
                //Stop swimming
                swimming = false;
                
                //Allow variable jump
                jumping = 1;
                
                //Set vertical speed
                vspeed = -jumpstrength;
                
                //Create a splash effect
                with (instance_create(x, y-16, obj_smoke)) {
                
                    sprite_index = spr_splash;
                    image_speed = 0.3;
                }
            }
            
            //Otherwise, stop vertical movement
            else {
            
                //If moving up, stop vertical movement
                if (vspeed < 0)
                    vspeed = 0;
            }
        }
    }
}

//Free the player is he is stuck on a solid.
if (vspeed == 0)
&& (crouch == false) 
&& (mask_index == spr_mask_player_big) {
    
    //If the player gets stuck
    if (inwall == false)
    && (collision_line(bbox_left, bbox_top+4, bbox_right, bbox_top+4, obj_solid, 1, 0)) 
    && (!collision_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_solid, 1, 0)) {
    
        //If the direction was not set, set it up
        if (direct2 == 0) then direct2 = xscale;
        
        //Begin movement
        inwall = true;
        
        //Set the movement direction
        direct = -direct2;
    }
    
    //Otherwise, if the player gets stuck on a wall.
    else if (inwall == true) {
    
        //If the player is not longer stuck, allow movement
        if (!collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0)) 
        || (crouch == true) 
        || (global.powerup == cs_pow_small) {
        
            //End wall movement
            inwall = false;
            
            //Reset movement direction
            direct2 = 0;
        }
        
        //Push the player until it is not stuck
        x += 1*sign(direct);
        
        //If the player collides with a wall while being stuck, reverse direction
        if (collision_rectangle(bbox_left, y+4, bbox_left, bbox_bottom-1, obj_solid, 1, 0))
        || (collision_rectangle(bbox_right, y+4, bbox_right, bbox_bottom-1, obj_solid, 1, 0))
            direct = -direct;
    }
}

//Otherwise, stop pushing
else {

    inwall = false;
}

//Unstuck in case of overlapping a solid completely
if (inwall == false)
&& (state != statetype.jump)
&& (state != statetype.climb) {

    //If facing right
    if (xscale == 1) {
    
        while (collision_point(bbox_right, bbox_top, obj_solid, 1, 0))
        && (collision_point(bbox_right, bbox_bottom, obj_solid, 1, 0))
            x--;
    }
    
    //Otherwise, if facing left
    else if (xscale == -1) {
    
        while (collision_point(bbox_left, bbox_top, obj_solid, 1, 0))
        && (collision_point(bbox_left, bbox_bottom, obj_solid, 1, 0))
            x++;
    }
}
        
//If the player is not in contact with water.
if (!collision_rectangle(bbox_left, y, bbox_right, bbox_bottom, obj_swim, 0, 0))
&& (swimming == true)
    swimming = false;

//Prevent the player from going too high on the level
if (y < -96)
    y = -96;
    
//Otherwise, if he is falling.
else {

    //If the player falls into a pit...
    if (bbox_bottom > room_height+32) {
    
        //Kill it
        instance_create(x, y, obj_player_dead);
        instance_destroy();
        exit;
    }
    
    //Otherwise, let's do a special check if the player is not stuck in a solid
    else if ((inwall == false) && (direct2 == 0)) {
    
        //Check boundaries
        event_user(12);
        
        /*Kill if the following conditions meet
        if ((l) && (r))
        || ((t) && (b)) {
        
            instance_create(x, y, obj_player_dead);
            instance_destroy();
            exit;
        }
        */
    }
}

/* */
/*  */
