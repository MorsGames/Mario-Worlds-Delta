/// @description Create the right pulley platform.

parent = instance_create(x+distance, y, obj_platform_pulley_right)
with (parent) {

    //Set this object as the parent of the created platform.
    parent = other.id;
    
    //Set the limit of the created platform the same as this platform.
    limit = other.limit;
    
    //Set the same sprite as this platform
    sprite_index = other.sprite_index;
}

