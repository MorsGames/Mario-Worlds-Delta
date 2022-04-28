/// @description Twister logic

//Inherit event from parent
event_inherited();

//Turn on ledges script
event_user(6);

//Push the player upwards
if (instance_exists(obj_playerparent)) {

    //If the player is above this twister
    if (collision_rectangle(x-16, bbox_top-80, x+16, bbox_top, obj_playerparent, 0, 0)) 
    && (obj_playerparent.bbox_bottom < yprevious+5) {
    
        //With the player
        with (obj_playerparent) {
        
            //Force set 'Jump' state
            state = statetype.jump;
            
            //Do not allow glide
            canglide = 0;
            
            //Do not allow jump
            jumping = 2;
            
            //Set vertical speed
            vspeed -= 0.5;
            if (vspeed < -4)            
                vspeed = -4;     
        }
    }
    
    //Otherwise, allow cape glide
    else
        with (obj_playerparent) canglide = 1;
}

