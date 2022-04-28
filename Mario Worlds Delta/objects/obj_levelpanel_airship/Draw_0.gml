/// @description Draw the airship

if (sprite_index == spr_levelpanel_airship) {

    draw_sprite_ext(spr_levelpanel_airship, -1, x+xoffset, y+yoffset-14, xscale, 1, 0, c_white, 1);
    draw_sprite_ext(spr_maplakitu_shadow, -1, x+xoffset-8, y-4, 1, 1, 0, c_white, 1);
}
else
    draw_sprite_ext(spr_levelpanel_airship_beaten, 0, x+xoffset, y, xscale, 1, 0, c_white, 1);

