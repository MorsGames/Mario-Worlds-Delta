/// @description Draw

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //Set the shader
    player_set_palette(obj_playerparent);    
    
    //Draw the cape
    draw_sprite_ext(sprite_index, image_index, round(x), round(y)+1, obj_playerparent.xscale, 1, 0, c_white, obj_playerparent.image_alpha);
       
    //Draw spinner
    draw_sprite_ext(player_spin(),-1,round(x),round(y)+1,obj_playerparent.xscale,1,0,c_white,obj_playerparent.image_alpha);
    
    //Reset shader
    pal_swap_reset();
}

