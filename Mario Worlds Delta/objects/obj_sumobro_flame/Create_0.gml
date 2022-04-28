/// @description Sumo bro lightning flames

//Inherit event
event_inherited();

//Animate
image_speed = 0.25;

//Do not create inside solids
while (position_meeting(x+8, bbox_bottom, obj_solid))
    y--;

