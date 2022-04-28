/// @description Animate faster

image_speed = 0.5;
if (sprite_index == spr_bobomb_down)
    sprite_index = spr_bobomb_down_th;
else if (sprite_index == spr_nokobombette_down)
    sprite_index = spr_nokobombette_down_th;
else
    sprite_index = spr_bobomb_cannon_th;

