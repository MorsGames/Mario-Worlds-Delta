/// @description Solid movement

//Inherit event from parent
event_inherited();

//Move the solid
if (instance_exists(mysolid)) {

    with (mysolid) {
    
        x = other.x-8;
        y = other.y;
    }
}

