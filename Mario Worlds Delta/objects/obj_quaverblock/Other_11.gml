/// @description Allow block hit and sprout an item downwards

//Sprout out an item
if (sprout != itemtype.coin)
&& (sprout != itemtype.coin_star)
&& (sprout != itemtype.coin_multi) {

    //If the item to sprout is a cape feather
    if (sprout == itemtype.feather)
        with (instance_create(xstart+16, ystart, obj_feather_sprout)) alarm[1] = 1;
        
    //If the item to sprout is a beanstalk
    else if (sprout == itemtype.beanstalk) {
    
        //Play 'Vine Sprout' sound
        audio_stop_play_sound(snd_vinesprout, 0, false);
        
        //Create beanstalk
        with (instance_create(xstart+16, ystart, obj_beanstalk)) 
            vspeed = 1;
    }
        
    //Otherwise, if the item to sprout is a mushroom/feather
    else if (sprout == itemtype.feather_plus) {
    
        //If the player is small, sprout a mushroom
        if (global.powerup == cs_pow_small) {
        
            with (sprite_create_object(xstart+16, ystart, spr_mushroom))
                permission = 0;
        }
        
        //Otherwise, sprout a feather
        else
            with (instance_create(xstart+16, ystart, obj_feather_sprout)) alarm[1] = 1;
    }
    else {
    
        //Temporary variable
        var myenum = enum_get_sprite(sprout);

        //Create the item
        with (sprite_create_object(xstart+16, ystart, myenum))
            permission = 0;
    }

    //Reset the item
    sprout = itemtype.coin;
}

