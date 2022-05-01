/// @description Release reserve item

var drop;
switch (obj_controller.hud_type) {

    //SMA2
    case (1): drop = 8; break;
    
    //SMA4
    case (2): drop = 18; break;

    //Minimalist
    case (3): 
    case (4):
        drop = 2; break;

    //Default
    default: drop = 14; break;
}

//If there's an item in the reserve item box
if (global.reserveitem != cs_pow_small) {

    //Create the reserve item
    with (instance_create(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 )+drop, obj_reserveitem)) {
    
        //Mushroom
        if (global.reserveitem == cs_pow_super)
            sprite_index = spr_mushroom;
            
        //Fire Flower
        else if (global.reserveitem == cs_pow_fire)
            sprite_index = spr_fireflower;
            
        //Cape Feather
        else if (global.reserveitem == cs_pow_cape)
            sprite_index = spr_feather;
            
        //Cape Feather
        else if (global.reserveitem == cs_pow_ice)
            sprite_index = spr_iceflower;
    }
    
    //Empty the box
    global.reserveitem = cs_pow_small;
}

