/// @description Break from above

//If the player is small, exit
if (global.powerup == cs_pow_small)
    exit;
    
//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player makes contact with this block and it is spinning
    if (place_meeting(x, y-(obj_playerparent.vspeed*2.5), obj_playerparent))
    && (obj_playerparent.vspeed > 0)
    && (obj_playerparent.jumpstyle == 1) {
    
        //Play 'Break' sound
        audio_stop_play_sound(snd_break, 0, false);
        
        //Get 50 coins
        score += 50;
        
        //Create shards    
        shard_create(x+8, y+8, shardsprite, 0, 6, 45);
        shard_create(x+8, y+8, shardsprite, 0, 6, 60);
        shard_create(x+8, y+8, shardsprite, 0, 6, 120);
        shard_create(x+8, y+8, shardsprite, 0, 6, 135);
        
        //Make the player bounce a little
        with (obj_playerparent) event_user(1);
            
        //Destroy
        instance_destroy();        
    }
}



