/// @description Check if there's a adyacent wall nearby.

//If there's a wall at the right
if (collision_rectangle(bbox_right, bbox_top, bbox_right, bbox_bottom, obj_solid, 1, 1)) {

    touchleft = false;
    touchright = true;    
}

//Otherwise,  if there's a wall at the left.
else if (collision_rectangle(bbox_left, bbox_top, bbox_left, bbox_bottom, obj_solid, 1, 1)) {

    touchleft = true;
    touchright = false;
}

//Otherwise...
else {

    touchleft = false;    
    touchright = false;
}

