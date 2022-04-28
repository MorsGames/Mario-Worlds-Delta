/// @description Bump the block sideways

//If the block can be bumped and the player exists
if (ready == 0) 
&& (instance_exists(obj_playerparent)) 
&& (obj_playerparent.bbox_bottom > y) {

    //If the player is at the right
    if (collision_rectangle(bbox_right, y+8, bbox_right+1, y+8, obj_playerparent, 0, 0)) {
    
        //Push the player backwards
        obj_playerparent.hspeed = 3;
        
        //Play 'Bump' sound
        audio_play_sound(snd_bump,  0,  false);
        
        //Bump the block
        hspeed = -2.25;
        ready = 1;
        
        //Reverse direction
        alarm[0] = 4;
    }
    
    //Otherwise,  if the player is at the left
    else if (collision_rectangle(bbox_left-1, y+8, bbox_left, y+8, obj_playerparent, 0, 0)) {
    
        //Push the player backwards
        obj_playerparent.hspeed = -3;
        
        //Play 'Bump' sound
        audio_play_sound(snd_bump,  0,  false);
        
        //Bump the block
        hspeed = 2.25;
        ready = 1;
        
        //Reverse direction
        alarm[0] = 4;
    }
}

//Prevent having items that are not coins
if (sprout == itemtype.coin_star)
|| (sprout == itemtype.coin_multi)
|| (sprout == itemtype.coin_multi_shroom)
|| (sprout == itemtype.beanstalk)
    sprout = itemtype.coin;

