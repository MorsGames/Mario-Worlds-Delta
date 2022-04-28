/// @description Bullet bill logic

//Set default depth when not overlapping a solid
if (!place_meeting(x, y, obj_solid)) {

    //If depth is set to 10, set it to -2
    if (depth = 10)
        depth = -2;
}

//Set xscale
if (hspeed > 0) then xscale = 1;
else if (hspeed < 0) then xscale = -1;

//Destroy when outside view
if (outside_view(32))
&& (depth != 10)
    instance_destroy();

