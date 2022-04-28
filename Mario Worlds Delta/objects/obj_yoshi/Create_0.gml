/// @description Yoshi, Yoshi! (Does anyone have a yoshi-english dictionary?)
/// @param Does anyone have a yoshi-english dictionary?

//Inherit event from parent
event_inherited();

//Yoshi State
enum yoshistate {

    idle,
    ridden,
    runaway
}
state = yoshistate.idle;
stateprev = 0;

//Yoshi Colour
colour = 0;
if (global.mountcolour != 0) {

    colour = global.mountcolour;
    global.mountcolour = 0;
}

//Is yoshi licking?
licking = 0;

//Whether Yoshi's tounge is locked.
locked = 0;

//What's in Yoshi's mouth?
mouthholder = noone;

//Sprite of the item in Yoshi's mouth
mouthsprite = noone;

//Whether Yoshi has ate a powerup
powerup = noone;

//Crouch for a moment upon mount
crouch_position = -1;

//Ammo
ammo = 0;

//Animation
anim = 0;
anim2 = 0;

//Is Yoshi jumping?
jumping = 0;

//Is Yoshi flying?
flying = 0;

//Flying animation
flyanim = 1;

//Flying time
flytime = 0;

//Can yoshi be ridden again
rideme = 1;

//Turning Animation
turning = 0;

//Scale
xscale = 1;

//Set the animation
alarm[5] = 60;
alarm[6] = 76;

//Player variables
f = 0;
m = player_ride();
m_vis = 1;
m_ypos = 0;

//If an item was carried from the previous room.
if (global.carrieditem != noone) {

    //Remember the item and reset it.
    mouthholder = global.carrieditem;
    global.carrieditem = noone;
    
    //Remember the sprite and reset it.
    mouthsprite = global.carriedsprite;
    global.carritedsprite = noone;
}

//Update palette
pal_sprite = spr_palette_yoshi;

