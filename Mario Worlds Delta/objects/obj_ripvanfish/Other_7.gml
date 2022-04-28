/// @description Snore if sleeping

if (sprite_index == spr_ripvanfish) {

    with (instance_create(x,y,obj_smoke)) {
    
        sprite_index = spr_snore;
        image_speed = 0.05;
        path_start(pth_bubble, 0.5, path_action_continue, 0);
    }
}

