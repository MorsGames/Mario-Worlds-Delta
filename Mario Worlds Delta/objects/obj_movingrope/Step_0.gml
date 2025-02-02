/// @description Platform logic

//Check for a track
var track = collision_rectangle(x+xorig, y+yorig-3, x+xorig, y+yorig+0.9, obj_trackparent, 1, 0);

//If the player is on line
if (state = "IN_LINE") {

    //Update steps
    step += spd;
    while (step >= 1) {
    
        //Travel through tracks
        if (collision_point(x+xorig+cos(degtorad(direct)), y+yorig-sin(degtorad(direct)), obj_trackparent, 1, 0)) {
        
            x += cos(degtorad(direct));
            y += -sin(degtorad(direct));
        }
        else if (collision_point(x+xorig+cos(degtorad(direct))-sin(degtorad(direct)), y+yorig-sin(degtorad(direct))-cos(degtorad(direct)), obj_trackparent, 1, 0)) {
        
            x += cos(degtorad(direct))-sin(degtorad(direct));
            y += -sin(degtorad(direct))-cos(degtorad(direct));
        }
        else if (collision_point(x+xorig+cos(degtorad(direct))+sin(degtorad(direct)), y+yorig-sin(degtorad(direct))+cos(degtorad(direct)), obj_trackparent, 1, 0)) {
        
            x += cos(degtorad(direct))+sin(degtorad(direct));
            y += -sin(degtorad(direct))+cos(degtorad(direct));
        }
        else if (collision_point(x+xorig-sin(degtorad(direct)), y+yorig-cos(degtorad(direct)), obj_trackparent, 1, 0)) {
        
            x += -sin(degtorad(direct));
            y += -cos(degtorad(direct));
            direct += 90;
        }
        else if (collision_point(x+xorig+sin(degtorad(direct)), y+yorig+cos(degtorad(direct)), obj_trackparent, 1, 0)) {
        
            x += sin(degtorad(direct));
            y += cos(degtorad(direct));
            direct -= 90;
        }
        else {
        
            direct += 180;
        }
            
        //Check for nodes / limits
        limit = collision_point(x+xorig, y+yorig, obj_track_limit, 1, 0);
        node = collision_point(x+xorig, y+yorig, obj_track_modifier, 1, 0);
        
        //If there's a launch node
        if (node) {

            //Set 'Falling' state
            state = "FALLING";
            
            //Reset step
            step = 0;             
            
            //Apply gravity
            gravity = 0.2;
            
            //Set direction
            direction = direct;
            
            //If moving up, jump
            if (direction == 90) {
            
                vspeed = -spd*3;
                if (node.hsp) {
                
                    if (x > xprevious)
                        hspeed = spd;
                    else if (x < xprevious)
                        hspeed = -spd;
                }      
            }
            
            //If moving to the right
            else if (direction == 0) {
            
                //If this is a jump node
                if (node.jump) {
                
                    vspeed = -spd*2.5;
                    hspeed = spd*2;
                }
                else
                    hspeed = spd;         
            }
            
            //If moving to the left
            else if (direction == 180) {
            
                //If this is a jump node
                if (node.jump) {
                
                    vspeed = -spd*2.5;
                    hspeed = -spd*2;
                }
                else
                    hspeed = -spd;              
            }
            else
                speed = spd;
        }
        
        //If there's a limit, reverse direction
        if (limit) then direct = -180;
        
        //Update alarm 0
        alarm[0] = 8;
        
        //Update step
        step--;
        
        //Reset angles
        if (direct < 0)
            direct += 360;
        else if (direct >= 360)
            direct -= 360;
    }
}

//Otherwise if falling
else if (ready == 1) && (state == "FALLING") {
    
    //If there's a track in position
    if (track) 
    && (vspeed > 0) {
    
        //Set "In_Line" state
        state = "IN_LINE";
        
        //Set direction and snap
        if (hspeed == 0) {
        
            direct = 270;
            move_snap(1, 2);
        }
        else {

            //If the track is a circle one
            //"pls notice me gatete" -mack
            if ((track.object_index == obj_track_circle)
            || (track.object_index == obj_track_circle_2x)) {
             
                direct = 270;
                move_snap(1, 2);   
            }
        
            //If the track is a horizontal one
            else if (track.object_index == obj_track_h) {
            
                move_snap(1, 8);
                if (hspeed > 0)
                    direct = 0;            
                else if (hspeed < 0)
                    direct = 180;
            }
            else {
            
                direct = 270;
                move_snap(1, 2);
            }             
        }
                             
        //Stop vertical movement
        hspeed = 0;
        vspeed = 0;
        gravity = 0;
                
        //In line
        ready = 0;
    }
    
    //Cap vertical speed
    if (vspeed > 3)
        vspeed = 3;
}

//If the platform is outside the view
if (x < __view_get( e__VW.XView, view_current )-sprite_width)
|| (x > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )) {

    //If the rope start point is outside the view
    if (xstart < __view_get( e__VW.XView, view_current )-sprite_width)
    || (xstart > __view_get( e__VW.XView, view_current )+__view_get( e__VW.WView, view_current )) {
    
        with (instance_create(xstart, ystart, object_index)) {
        
            spd = other.spd;        
        }
        instance_destroy();
    }        
}

