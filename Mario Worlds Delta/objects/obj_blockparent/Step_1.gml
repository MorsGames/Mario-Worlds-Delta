/// @description Block logic

//Checks
var thwomp = collision_rectangle(bbox_left-1, y-4, bbox_right, y, obj_thwomp_mega, 1, 0);
var skewer = collision_rectangle(bbox_left-4, bbox_top-4, bbox_right+4, bbox_bottom+4, obj_skewerparent, 1, 0);

//If the conditions meet, destroy
if ((thwomp) && (thwomp.ready == 1))
|| ((skewer) && (skewer.gravity != 0)) {

    event_user(15);
}

//Depth
if (speed > 0)
    depth = -2;
else
    depth = 8;

