/// @description Manage Boo sprites and if it's solid

if (movenow == 0) {
    if frame = 0
        frame = 1;
    frame += 0.125;
    if frame >= sprite_get_number(sprite_index)
        frame = sprite_get_number(sprite_index) - .01;
} else {
    frame -= 0.025;
    if frame <= 0 {
        frame = 0;
    }
}

if floor(frame) = 0
    if instance_exists(mysolid)
        with (mysolid) instance_destroy();
        
if floor(frame) > 0
    if !instance_exists(mysolid)
        mysolid = instance_create(x-8,y,obj_solid_moving);
        
if instance_exists(mysolid)
    stomp = -1;
else 
    stomp = 2;

with (mysolid) visible = false;

