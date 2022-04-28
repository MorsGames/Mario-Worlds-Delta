/// @description Draw Tongue

//Draw eaten item
if (hunger) {

    draw_sprite(foodsprite, foodindex, x+3+3*obj_playerparent.xscale-foodoffset, y-4);
}

//Draw tongue parts
draw_sprite_ext(spr_tongue, 1, tongue1x+3-3*obj_playerparent.xscale, y, obj_playerparent.xscale, 1, 0, c_white, 1);
draw_sprite_ext(spr_tongue, 1, tongue2x+3-3*obj_playerparent.xscale, y, obj_playerparent.xscale, 1, 0, c_white, 1);
draw_sprite_ext(spr_tongue, 1, tongue3x+3-3*obj_playerparent.xscale, y, obj_playerparent.xscale, 1, 0, c_white, 1);
draw_sprite_ext(spr_tongue, 1, tongue4x+3-3*obj_playerparent.xscale, y, obj_playerparent.xscale, 1, 0, c_white, 1);
draw_sprite_ext(spr_tongue, 0, x+3-3*obj_playerparent.xscale, y, obj_playerparent.xscale, 1, 0, c_white, 1);

