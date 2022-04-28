/// @description Wiggler

//Inherit event from parent
event_perform_object(obj_enemyparent, ev_create, 0);

//How vulnerable is this enemy to various items?
vulnerable = 3;

//How vulnerable is this enemy to the player?
stomp = 4;

//How vulnerable is this enemy to yoshi?
edible = 2;

//Facing direction
xscale = 1;

//Whether the object is swimming
swimming = false;

//Animate
image_speed = 0.125;

//Start moving
alarm[10] = 2;

//State
state = 0;

//Colour
color = 0;

///Wiggler's body

//Body parts count
seg = 9;

//Create anatomy
for (var b = 1; b < seg; b++) {

    mybody[b] = instance_create(xstart, ystart, obj_wiggler_body);
    mybody[b].image_speed = 0.125;
    mybody[b].image_index = b;
    mybody[b].depth = 0+b;
    mybody[b].parent = id;
    if (b = 1)
        mybody[b].prevsegment = other.id; //Snap to the head.
    else
        mybody[b].prevsegment = mybody[b]-1 //Snap to other consecutive parts. 
}

//Make body structure
closeness = 16;
amount_previous = 190;

//Make body coodirnate queue
for (i=1; i<amount_previous; i++;) {

    oldx[i] = x;
    oldy[i] = y;
}

