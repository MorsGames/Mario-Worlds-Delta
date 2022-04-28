/// @description Bouncin' Chuck logic

//Push value
xx = abs(hspeed);

//If the chuck has not been hurt before
if (hp == 3) {
    
    //Floor collision
    event_user(4);
    
    //Face towards the player
    event_user(8);
    
    //If there's no gravity
    if (gravity == 0) {
    
        //If the chuck is jumping
        if (jumping == 0) {
        
            //If the player does exist
            if (instance_exists(obj_playerparent)) 
            && (obj_playerparent.x > bbox_left-64)
            && (obj_playerparent.x < bbox_right+64) {
            
                //Set charge frame
                image_index = 1;
    
                //Begin jump
                jumping = 1;
                
                //Begin shake
                alarm[1] = 1;
                
                //Perform jump in player's direction
                alarm[2] = 60;
            }
        }
        
        //Otherwise, if the chuck is jumping
        else if (jumping == 2) {
        
            //Set jumping state
            jumping = 3;
        
            //Stop horizontal speed
            hspeed = 0;
            
            //Allow jumping
            alarm[0] = 30;
        
            //Set up default sprite
            if (image_index != 0)
                image_index = 0;
        }
    }
    
    //Move away from walls
    if ((hspeed < 0) && (collision_rectangle(bbox_left+hspeed, bbox_top+4, bbox_left+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x += xx;
    if ((hspeed > 0) && (collision_rectangle(bbox_right+hspeed, bbox_top+4, bbox_right+hspeed, bbox_bottom-1, obj_solid, 0, 0)))
        x -= xx;
}
else
event_inherited();

