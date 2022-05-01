/// @description Create message

with (instance_create(0, 0, obj_message)) {
    
    //Exit automatically
    switchmsg = 1;
    
    //Set the message depending of what switch was pressed
    if (other.sprite_index = spr_palaceswitch_y)
        ini_section = "MSG_SWY";
    else if (other.sprite_index = spr_palaceswitch_g)
        ini_section = "MSG_SWG";    
    else if (other.sprite_index = spr_palaceswitch_r)
        ini_section = "MSG_SWR";    
    else if (other.sprite_index = spr_palaceswitch_b)
        ini_section = "MSG_SWB";    
}

