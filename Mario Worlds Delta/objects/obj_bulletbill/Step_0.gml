/// @description Banzai bill logic

//Set default depth when not overlapping a solid
if (!place_meeting(x, y, obj_solid)) {

    //If depth is not set to -2, set it to -2
    if (depth != -2)
        depth = -2;
}

//Keep scale
xscale = 1;

//Destroy when outside view
if (outside_view(16))
&& (depth == -2)
    instance_destroy();

