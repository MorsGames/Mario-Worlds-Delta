/// @description Initialize

//Animate
image_speed = 0.3;
image_index = 0;

//Speed
sp = 1;

//Block state
used = 0;
donezo = 0;

//Fake vertical speed and offset
yspeed = 0;
yoffset = 0;

//Initialize movement
_up = collision_point(x+8, y+8, obj_up, 1, 0);
if (_up) {

    motion_set(90, sp);
    with (_up) instance_destroy();
}
_down = collision_point(x+8, y+8, obj_down, 1, 0);
if (_down) {

    motion_set(270, sp);
    with (_down) instance_destroy();
}
_left = collision_point(x+8, y+8, obj_left, 1, 0);
if (_left) {

    motion_set(180, sp);
    with (_left) instance_destroy();
}
_right = collision_point(x+8, y+8, obj_right, 1, 0);
if (_right) {

    motion_set(0, sp);
    with (_right) instance_destroy();
}

