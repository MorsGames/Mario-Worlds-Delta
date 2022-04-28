/// @description Copy of obj_piranhaplant 'Alarm 0' event

//Inherit it
event_inherited();

//Show glitched piranha
if (floor(random(100) >= 95))
    sprite_index = spr_piranhaplant_long_glitch;
else
    sprite_index = spr_piranhaplant_long;

