/// @description Platform logic (Player)
/// @param Player

//Check for the player
var player = collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_top+4, obj_playerparent, 0, 0);

//If the player exists
if (player)
&& (player.state != statetype.jump)
&& (player.bbox_bottom < yprevious+5) 
&& (!collision_rectangle(player.bbox_left, bbox_top-5, player.bbox_right, bbox_top+1, obj_semisolid, 0, 1))
&& (!collision_rectangle(player.bbox_left, bbox_top-5, player.bbox_right, bbox_top+1, obj_semisolid_moving, 0, 1)){
    
    //Snap the player vertically
    player.y = ceil(bbox_top-15);
    
    //Set moving state if we didnt
    if (state == "IDLE") {
    
        state = "IN_LINE";
    }

    //Snap the player horizontally
    player.x += x-xprevious;
    if ((collision_rectangle(player.bbox_right, player.bbox_top+4, player.bbox_right+1, player.bbox_bottom-1, obj_solid, 1, 1)) || (collision_rectangle(player.bbox_right, player.bbox_top+4, player.bbox_right+1, player.bbox_bottom-1, obj_solid_moving, 1, 1)))
        player.x--;
    else if ((collision_rectangle(player.bbox_left-1, player.bbox_top+4, player.bbox_left, player.bbox_bottom-1, obj_solid, 1, 1)) || (collision_rectangle(player.bbox_left-1, player.bbox_top+4, player.bbox_left, player.bbox_bottom-1, obj_solid_moving, 1, 1)))
        player.x++;  
}

