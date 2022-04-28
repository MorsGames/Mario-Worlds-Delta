/// @description Player Logic (While on platform)
/// @param While on platform

//Check for the player
var player = collision_rectangle(bbox_left, bbox_top-5, bbox_right, bbox_bottom+4, obj_playerparent, 1, 0);

//If the player exists
if (player)
&& (player.vspeed >= 0) 
&& (player.bbox_bottom < self.bbox_bottom) {
    
    //Snap the player vertically
    //player.y++;

    //Snap the player horizontally
    player.x += x-xprevious;
    if ((collision_rectangle(player.bbox_right, player.bbox_top+4, player.bbox_right+1, player.bbox_bottom-1, obj_solid, 1, 1)) || (collision_rectangle(player.bbox_right, player.bbox_top+4, player.bbox_right+1, player.bbox_bottom-1, obj_solid_moving, 1, 1)))
        player.x--;
    else if ((collision_rectangle(player.bbox_left-1, player.bbox_top+4, player.bbox_left, player.bbox_bottom-1, obj_solid, 1, 1)) || (collision_rectangle(player.bbox_left-1, player.bbox_top+4, player.bbox_left, player.bbox_bottom-1, obj_solid_moving, 1, 1)))
        player.x++;  
}  

