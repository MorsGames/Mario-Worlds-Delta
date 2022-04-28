/// @description Kicked Koopa Shell logic

//Previous horizontal speed
prevhspeed = hspeed;    

//Inherit event
event_inherited();

//Check for 1 block gaps and blocks in the way
event_user(8);

//Set vulnerabilities
event_user(14);

//If the direction changes...
if (sign(hspeed) != sign(prevhspeed))
&& (!place_meeting(x,y,obj_beachkoopa_blue)) {

    //If the item is not outside
    if (!outside_view(sprite_get_width(sprite_index))) {
    
        //Play 'Bump' sound
        audio_stop_play_sound(snd_bump, 0, false);
    }
        
    //Bump blocks
    instance_create(x-8, y, obj_blockbumper);
    
    //Create wall smash
    instance_create(x+(5*sign(prevhspeed)), y+8, obj_shellthump);
}

