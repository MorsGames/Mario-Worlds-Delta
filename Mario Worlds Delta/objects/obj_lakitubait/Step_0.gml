/// @description Lakitu bait logic

if parent.type = 0 {

    //If Lakitu, have 1-up
    sprite_index = spr_1up;
    image_speed = 0;
    
} else {

    //If not Lakitu, have blue fire
    sprite_index = spr_bluefire;
    image_speed = 0.125;
    
}

