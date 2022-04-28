/// @description The parent object for all held items

//Inherit event from physics parent
event_inherited();

//Do not animate
image_speed = 0;

//Direction of item
dir = 1;

//Is the item held?
held = 0;

//Is the item embed in a wall
inwall = 0;

//Follower
follow = noone;

//Do not slowdown when kicked (Applies only to blue bricks)
ready = 0;

