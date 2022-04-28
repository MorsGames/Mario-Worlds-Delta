/// @description The player's parent object

//Enable / disable gravity.
gravity_enable = true;

//Enable / disable control
control_enable = true;

//Movement variables
grav_s = 0;
hspd_s = 0;
vspd_s = 0;

//Handle player's state.
enum statetype {

    idle,
    walk,
    jump,
    climb
}
state = statetype.idle;
delay = 0;

//Handle player
angle = 0;

//Handle player's facing direction.
//1:   Right
//-1:   Left
xscale = 1;

//Handle the player direction when stuck on a solid.
//1:    Right
//-1:   Left
direct = 1;
direct2 = 0;

//Make the player able to hold items, this also enables a special swimming behaviour.
holding = 0;

//Make the player able or not able to jump.
//0: Can Jump
//1: Jumping, can stop in midair
//2: Jumping, cannot stop in midair
jumping = 0;

//Make the player able to perform a spin-jump.
//0: No spin
//1: Spin
jumpstyle = 0;

//Makes the player able to run faster and fly if he has the cape feather.
run = false;

//Allow player to turn while moving
turnnow = false;

//Manages player movement if sliding
sliding = false;

//Manages player movement if swimming
swimming = false;

//Manages player movement if crouched down
crouch = false;

//Allows the player to fly if there's enough speed
pmeter = 0;
boostme = 0;

//Displays a kicking animation if you just kicked a item or a NPC.
kicking = false;

//Prevents damage on the player
invulnerable = false;

//Checks if the player is stuck on a solid surface
inwall = false;

//Displays a firing frame when shooting a projectile
firing = 0;

//Manage colours in the player object
isflashing = 0;

//Manage combos
hitcombo = 0;

//Check if the player is on a slippery surface
inice = 0;

//Maximum horizontal speed
hspeedmax = 1.5;

//Is the player on a sloped terrain?
slope = 0;

//Makes the player dive when holding an item underwater
dive = 0;

//Makes the player able to fly
fly = 0;
flying = 0;
flystrength = 5;
grav_fly = 0.07;

//Squat Timer
squat_time = 0;
squat_ready = 0;

//Floating Timer
floatnow = 0;
floating = 0;

//Scuttle before jump
prejump_scuttle = -1;

//Net smack
netsmack = 0;

//Cloud riding
oncloud = 0;

//Bonus Game Clear
cleared = 0;
timer = 0;

//Check if stun
stun = 0;
stun_anim = 0;

//Projectile direction when spinning
dir = 1;

//Wall / Ceiling Trigger
l = 0;
r = 0;
t = 0;
b = 0;

//Begin alarms
alarm[3] = 1;
alarm[6] = 1;
alarm[8] = 1;
alarm[11] = 1;

//Palette variables
pal = noone;
numb = 0;

//Call cape draw object
mycape = instance_create(x, y, obj_cape);

//Call bolt lift triggers
instance_create(x, y, obj_boundary_top);
instance_create(x, y, obj_boundary_bottom);

//find slope
if (collision_rectangle(x-2, bbox_bottom-3, x+2, bbox_bottom+vspeed, obj_slopeparent, 1, 0)) {

    //manage slope
    with (obj_slopeparent)    
        slope_calculate();
}

