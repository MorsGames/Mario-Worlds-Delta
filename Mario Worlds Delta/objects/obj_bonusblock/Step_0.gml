/// @description Player Collision

//If the block has not been hit
if (used == 0) {

    //If the player does exist
    if (instance_exists(obj_playerparent)) {
    
        //If the player exists and it's jumping
        if (collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom-4, obj_playerparent, 1, 0)) 
        && (obj_playerparent.vspeed < 0)
        && (obj_playerparent.bbox_top > y+8) {
        
            //Temp variable
            var _yyy;
            _yyy = obj_playerparent.y-obj_playerparent.bbox_top;
            
            //Play 'Bump' sound
            audio_stop_play_sound(snd_bump, 0, false);
            
            //Play 'Switch' sound
            audio_stop_play_sound(snd_switch, 0, false);
            
            //Stop vertical speed
            obj_playerparent.vspeed = 0;
            obj_playerparent.y = (self.y+16)+_yyy;
            
            //Mark block as used
            used = 1;
            
            //Set image
            event_user(0);
            
            //Bump the block
            yoffset = 0;
            yspeed = -2.25;
            alarm[0] = 4;
        }
    }
}

///Block Movement

if (used <= 1)
&& (donezo == 0) {

    //Move down
    if ((x >= 160) && (hspeed > 0)) {
    
        hspeed = 0;
        vspeed = sp;
        x = 160;
    }
    
    //Move up
    if ((x <= 80) && (hspeed < 0)) {
    
        hspeed = 0;
        vspeed = -sp;
        x = 80;
    }
    
    //Move left
    if ((y >= 128) && (vspeed > 0)) {
        
        vspeed = 0;
        hspeed = -sp;
        y = 128;  
    }
    
    //Move right
    if ((y <= 48) && (vspeed < 0)) {
    
        vspeed = 0;
        hspeed = sp;
        y = 48;
    }
}

//Set offset based on fake vertical speed
yoffset += yspeed;

//Make sure it stays in position after being bumped
if ((yspeed > 0) && (yoffset >= 0)) {

    yspeed = 0;
    yoffset = 0;
}
else if ((yspeed == 0) && (yoffset <> 0))
    yoffset = 0;

///Stop all blocks if all of them are used

//Keep block stopped
if (used == 3) {

    speed = 0;
    move_snap(8, 8);
}

//Stop
if (used == 2) {

    //If the block is at y:48
    if (y == 48) {
    
        //If the block is at x:80, stop it
        if (x == 80) {
        
            speed = 0;
            x = 80;
            used = 3;
            move_snap(8, 8);
        }
        
        //Otherwise, if the block is at x:128, stop it
        else if (x == 120) {
        
            speed = 0;
            x = 120;
            used = 3;
            move_snap(8, 8);
        }
        
        //Otherwise, if the block is at x:176, stop it
        else if (x == 160) {
        
            speed = 0;
            x = 160;
            used = 3;
            move_snap(8, 8);
        }
        
        //Stay at y:48
        y = 48;
    }
    
    //If the block is at y:88
    else if (y == 88) {
    
        //If the block is at x:80, stop it
        if (x == 80) {
        
            speed = 0;
            x = 80;
            used = 3;
            move_snap(8, 8);
        }
        
        //If the block is at x:160, stop it
        else if (x == 160) {
        
            speed = 0;
            x = 160;
            used = 3;
            move_snap(8, 8);
        }
        
        //Stay at y:88
        y = 88;
    }
    
    //Otherwise, if the block is at y:80
    else if (y == 128) {
    
        //If the block is at x:80, stop it
        if (x == 80) {
        
            speed = 0;
            x = 80;
            used = 3;
            move_snap(8, 8);
        }
        
        //Otherwise, if the block is at x:120, stop it
        else if (x == 120) {
        
            speed = 0;
            x = 120;
            used = 3;
            move_snap(8, 8);
        }
        
        //Otherwise, if the block is at x:160, stop it
        else if (x == 160) {
        
            speed = 0;
            x = 160;
            used = 3;
            move_snap(8, 8);
        }
        
        //Stay at y:128
        y = 128;
    }
}

