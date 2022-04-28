/// @description Unleash the noise

if (ready == 0) 
&& (!position_meeting(x, y, obj_qblock_hidden)) {

    //Unleash the pig
    instance_create(x+8, y+12, obj_sound_oink_b);
    
    //Prevent sound overlap
    ready = 1;
}

