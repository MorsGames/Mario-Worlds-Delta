/// @description A seaweed, give those underwater levels some life

//Animate the tile.
image_speed = 0.15;

//If there's not a seaweed above
if (!position_meeting(x, y-1, obj_seaweed))
    sprite_index = spr_seaweed_top;
else if (!position_meeting(x, y+16, obj_seaweed))
    sprite_index = spr_seaweed_bottom;

