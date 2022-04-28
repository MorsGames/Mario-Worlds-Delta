/// @description Physics Parent

//Is the object in a slope?
slope = false;

//Combo
hitcombo = false;

//Is the object underwater?
if (collision_line(bbox_left, bbox_top, bbox_right, bbox_top, obj_swim, 0, 0))
    swimming = true;
else
    swimming = false;

