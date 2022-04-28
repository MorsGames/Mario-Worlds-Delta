/// @description Make the platform move within the engine

if (myplat != noone) {
    
    //Keep the rope in position
    myplat.x = self.x+xorig;
    myplat.y = self.y+6;
    
    //If a player exists
    if (instance_exists(obj_playerparent)) {
    
        //The engine's platform collision detection
        var detect = collision_rectangle(obj_playerparent.bbox_left, obj_playerparent.bbox_bottom-2, obj_playerparent.bbox_right, obj_playerparent.bbox_bottom+4, myplat, 1, 0);
        
        //Move if player lands on the seesaw
        if (detect)
        && (obj_playerparent.gravity == 0)
        && (state == "IDLE")
            state = "IN_LINE";
    }
}

