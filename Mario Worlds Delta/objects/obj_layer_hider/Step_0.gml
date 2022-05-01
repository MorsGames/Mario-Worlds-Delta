/// @description Layer hider logic

// Collision with the player object
var _visible = !collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_playerparent, 0, 0);

// Set the layer visibility
layer_set_visible(target_layer, _visible);

// TODO: Add a flashing effect so it's not super sudden.
