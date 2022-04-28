/// @description Check if the player is on this slope and slow him down

with (obj_playerparent) {

    if (collision_rectangle(x-2, bbox_bottom-1, x+2, bbox_bottom+1, other.id, 1, 0))
    && (boostme == 0)
    && (sliding == false)
    && (state != statetype.jump)
    && (state != statetype.climb)        
        hspeed += 1;
}

