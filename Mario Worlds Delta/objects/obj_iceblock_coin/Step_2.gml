/// @description Ice Coin block logic

//Check for a fireball
fire = collision_rectangle(bbox_left-1, bbox_top-4, bbox_right+1, bbox_bottom+1, obj_fireball, 0, 0);

//If there's a fireball in position
if (fire) {

    //Create smoke
    with (instance_create(x+8, y+8, obj_smoke)) sprite_index = spr_smoke_16;    
    
    //Create a coin
    with (instance_create(x, y, obj_coin)) image_index = obj_coin.image_index;
    
    //Destroy fireball
    with (fire) event_user(0);    
    
    //Destroy this block
    instance_destroy();
}

//Check for a fire bro fireball
fire2 = collision_rectangle(bbox_left-1, bbox_top-4, bbox_right+1, bbox_bottom+1, obj_firebro_fireball, 0, 0);

//If there's a fireball in position
if (fire2) {

    //Create smoke
    with (instance_create(x+8, y+8, obj_smoke)) sprite_index = spr_smoke_16;    
    
    //Create a coin
    with (instance_create(x, y, obj_coin)) image_index = obj_coin.image_index;
    
    //Destroy fireball
    with (fire2) event_user(0);   
    
    //Destroy this block
    instance_destroy();
}

//Check for a firebar
firebar = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_firebar_ball, 0, 0);

//If there's a fireball in position
if (firebar) {

    //Create smoke
    with (instance_create(x+8, y+8, obj_smoke)) sprite_index = spr_smoke_16;    
    
    //Create a coin
    with (instance_create(x, y, obj_coin)) image_index = obj_coin.image_index;
    
    //Destroy this block
    instance_destroy();
}

