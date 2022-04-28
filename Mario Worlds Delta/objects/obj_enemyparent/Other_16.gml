/// @description Turn at ledges script

if (gravity == 0) {

    //If moving left
    if (hspeed < 0) {
    
        //If there's no ground on the way, turn around
        if (!collision_rectangle(bbox_left+3, bbox_bottom-1, bbox_left+3, bbox_bottom+12, obj_semisolid, 0, 0))
        && (!collision_rectangle(bbox_left+3, bbox_bottom-1, bbox_left+3, bbox_bottom+12, obj_slopeparent, 0, 0)) {
        
            hspeed = -hspeed;
            x = xprevious;
        }
    }
    
    //Otherwise, if moving right
    else if (hspeed > 0) {
    
        //If there's no ground on the way, turn around
        if (!collision_rectangle(bbox_right-3, bbox_bottom-1, bbox_right-3, bbox_bottom+12, obj_semisolid, 0, 0))
        && (!collision_rectangle(bbox_right-3, bbox_bottom-1, bbox_right-3, bbox_bottom+12, obj_slopeparent, 0, 0)) {
        
            hspeed = -hspeed;
            x = xprevious;          
        }
    }
}

