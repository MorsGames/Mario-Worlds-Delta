/// @description Super Goomba

//Inherit event from parent
event_inherited();

//How vulnerable is this enemy to various items?
vulnerable = 1;

//How vulnerable is this enemy to the player?
stomp = 0;

//How vulnerable is this enemy to yoshi?
edible = 0;

//Facing direction
xscale = 1;

//Whether the object is swimming
swimming = false;

//Death sprite
deathsprite = spr_supergoomba_dead;

//Stomp sprite
stompsprite = spr_supergoomba_dead;

//Whether this object is jumping
jumping = 0;

//Animate
image_speed = 0;

//Turn into a flip block if there's one below
if (collision_point(x, bbox_bottom+8, obj_brick_flip, 0, 0))
    sprite_index = spr_supergoomba_flip;

