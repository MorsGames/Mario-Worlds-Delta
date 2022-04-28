/// @description Emit an orb

var orb = instance_create(x - 8, y - 16, obj_orb);
orb.vspeed = -3;

//Destroy boss support
if (instance_exists(obj_grinder_line)) {

    with (obj_grinder_line) {
    
        //Give points
        instance_create(round(bbox_left+bbox_right)/2-8, y, obj_enemy_score);
    
        //Create poof of smoke
        with (instance_create(round(bbox_left+bbox_right)/2, round(bbox_top+bbox_bottom)/2, obj_smoke)) {
        
            sprite_index = spr_smoke_16;
        }
        
        //Destroy
        instance_destroy();
    }
}

