/// @description Create message

with (instance_create(0, 0, obj_message)) {
    
    //Exit automatically
    switchmsg = 1;
    
    //Set the message depending of what switch was pressed
    if (other.sprite_index = spr_palaceswitch_y)
        inisection = "MSG_SWY";
    else if (other.sprite_index = spr_palaceswitch_g)
        inisection = "MSG_SWG";    
    else if (other.sprite_index = spr_palaceswitch_r)
        inisection = "MSG_SWR";    
    else if (other.sprite_index = spr_palaceswitch_b)
        inisection = "MSG_SWB";    
}

