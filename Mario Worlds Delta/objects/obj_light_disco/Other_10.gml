/// @description Create a disco light

mylight = instance_create(x, y, obj_light_disco_gen);
with (mylight) {

    parent = other.id;
}

