/// @description Solid on top enemy logic

//Inherit event
event_inherited();

//If the platform exists
if (instance_exists(mytop)) {

    //Set the position of the platform
    mytop.x = x-16;
    mytop.y = bbox_top-1;

    //Check for the player
    var player = collision_rectangle(bbox_left, mytop.bbox_top-5, bbox_right, mytop.bbox_top+4, obj_playerparent, 0, 0);
    
    //If the player exists
    if (player)
    && (player.state != statetype.jump)
    && (player.bbox_bottom < yprevious+5) {
        
        //Snap the player vertically
        player.y = ceil(mytop.bbox_top-16);
    
        //Snap the player horizontally
        player.x += x-xprevious;
        if (collision_rectangle(player.bbox_right, player.bbox_top+4, player.bbox_right+1, player.bbox_bottom-1, obj_solid, 1, 1))
            player.x--;
        else if (collision_rectangle(player.bbox_left-1, player.bbox_top+4, player.bbox_left, player.bbox_bottom-1, obj_solid, 1, 1))
            player.x++;  
    }
}

