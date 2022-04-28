/// @description Generate another magikoopa

with (instance_create(-1000, -1000, obj_enemy_tick)) {

    sprite_index = spr_magikoopa;
    xmin = other.xmin;
    xmax = other.xmax;
}

