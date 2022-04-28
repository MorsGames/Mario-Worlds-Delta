/// @description Allow block to be hit again and swap blocks

//Play 'Switch' sound
audio_stop_play_sound(snd_switch, 0, false);

//Allow block hit
ready = 0;

//Increment global player
global.player++;
if (global.player > 3) {

    global.player = 0;
}

//Swap character
if (instance_exists(obj_playerparent)) {

    //With the player
    with (obj_playerparent) {
        
        //Create player
        with (player_create(x, y)) {
        
            //Hereby speed
            hspeed = other.hspeed;
            vspeed = other.vspeed;
        
            //Make invulnerable for 1.5 seconds
            invulnerable = 1;
            alarm[0] = 90;
            alarm[1] = 1;
        }
        
        //Destroy
        instance_destroy();
    
        //Create smoke
        with (instance_create(x, y, obj_smoke))
            sprite_index = spr_smoke_16;
    }
}

