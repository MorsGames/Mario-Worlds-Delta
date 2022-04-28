/// @description Check for the player and hurt him

var player = collision_rectangle(bbox_left-1, bbox_top-1, bbox_right+1, bbox_bottom+1, obj_playerparent, 0, 0);

//If the player is in position, kill him at the instant
if (player) 
&& (!instance_exists(obj_invincibility)) {

    with (player) {
    
        instance_create(x, y, obj_player_dead);
        instance_destroy();
        exit;
    }
}

