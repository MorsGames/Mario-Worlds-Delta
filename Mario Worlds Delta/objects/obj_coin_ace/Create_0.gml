/// @description Ace Coins

//Destroy if collected
if (ds_map_exists(global.dcoins, id)) {

    instance_destroy();
    exit;
}

//Inherit event from parent
event_inherited();

//Do not animate
image_speed = 0.15;

//Apply physics if ready
ready = 0;

//Bounce in ground, there's no need to modify this variable
bouncy = 0;

//Correct position
y -= 4;

