/// @description Magikoopa logic

//If the magikoopa is about to appear
if (ready == 0) {

    //If the player is inside the area
    if (instance_exists(obj_playerparent))
    && (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) {
        
        //Increment alpha
        image_alpha += 0.0324;
        
        //If the magikoopa is done
        if (image_alpha > 1) {
        
            //Set both alpha and frame
            image_alpha = 1;
            image_index = 1;
            
            //Make vulnerable
            vulnerable = 1;
            stomp = 0;
            
            //Prepare a spell
            ready = 1;
            alarm[0] = 90;
        }
    }
}

//Otherwise, if the magikoopa is dissappearing
else if (ready == 2) {

    //Decrement alpha
    image_alpha -= 0.0324;
    
    //If the magikoopa is done
    if (image_alpha < 0) {
    
        //Set both alpha and frame
        image_index = 0;
        image_alpha = 0;
        
        //End
        ready = 3;
    }
    
    //Make invulnerable
    vulnerable = 100;
    stomp = -1;   
}

//Otherwise if the magikoopa is changing it's position
else if (ready == 3) {

    //If the player is inside the given coordinates, and there's not a tile at the given position.
    if (instance_exists(obj_playerparent))
    && (obj_playerparent.x > xmin)
    && (obj_playerparent.x < xmax) {

        //Move to a random position
        x = (floor(random_range(__view_get( e__VW.XView, 0 )+16, __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-16)/16)*16)+8;
        y = floor(random_range(__view_get( e__VW.YView, 0 )+16, __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-16)/16)*16;
                
        //Check for a semisolid
        var semisolid = collision_rectangle(x, bbox_bottom, x, bbox_bottom+2,obj_semisolid,0,1);
        
        //If there's a collision in position
        while (semisolid)
        && (ready == 3)
        && (!tile_layer_find(9, x-8, y)) 
        && (!tile_layer_find(9, x+7, y))
        && (!collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solid, 0, 1)) {
            
            //Snap above the semisolid
            y = semisolid.bbox_top-16;
            
            //Prepare spell
            ready = 0; 
        }
    }  
}

//Go up if overlapping a slope
while (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_slopeparent, 1, 1)) y--;

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

