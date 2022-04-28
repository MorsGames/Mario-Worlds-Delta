/// @description Boo stream movement

//Animation
animframe += 0.125;
if (animframe >= 2)
    animframe = 0;

image_index = animframe + (type * 2);

//If parent
if (isparent) {

    //Set up initial movement
    if (hspeed = 0) {
    
        vspeed = streamspeed;
        if (instance_exists(obj_playerparent)) {
        
            if (x > obj_playerparent.x)
                hspeed = -streamspeed;
            else 
                hspeed = streamspeed;
        } 
        else
            hspeed = streamspeed;
    }

    //Collision with walls
    t = collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0);
    b = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_semisolid, 1, 0);
    b2 = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, obj_solid, 1, 0);
    l = collision_rectangle(bbox_left-1, bbox_top, bbox_left, bbox_bottom, obj_solid, 1, 0);
    r = collision_rectangle(bbox_right, bbox_top, bbox_right+1, bbox_bottom, obj_solid, 1, 0);
    
    if hspeed != 0 && vspeed != 0 {
    
        if (r) {
        
            hspeed = -streamspeed;
        }
        
        if (l) {
        
            hspeed = streamspeed;
        }
        
        if (t) {
        
            vspeed = streamspeed;
        }
        
        if (b || b2) {
        
            vspeed = -streamspeed;
        }    
    }
    
    //Handle image flipping
    xscale = 1*sign(hspeed);
}

///Destroy stream children if destroyed
if (!isparent)
    if (!instance_exists(parent))
        instance_destroy();        

///Hurt the player on impact since Boo stream is invincible

var player = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playerparent, 0, 0);
if (player)
    with (player) event_user(0);

