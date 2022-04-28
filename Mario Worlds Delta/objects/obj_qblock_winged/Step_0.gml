/// @description Winged block logic

//Check for the player
var player = collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_playerparent, 1, 0);

//Check for a block bumper
var bumper = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_blockbumper, 0, 0);

//Check for a 
var thrown = collision_rectangle(bbox_left, bbox_bottom+1, bbox_right, bbox_bottom+2, obj_holdparent, 1, 0);

//If the player is in position, or this object is colliding with a bumper or a thrown item
if ((player)
&& (player.vspeed <= 0)
&& (player.state = statetype.jump) 
&& (player.bbox_top > bbox_bottom+player.vspeed-1)) 
|| ((thrown)
&& (thrown.vspeed <= 0)) 
|| (bumper) {

    //Create a new block, give it the same item and bump it.
    with (instance_create(x, y, obj_qblock)) {
    
        //Set the sprite
        sprite_index = spr_qblock;
        image_speed = 0.15;
        image_index = 0;
    
        //Bump it
        ready = 1;
        
        //Set the vertical speed
        vspeed = -2;
        
        //Move down
        alarm[0] = 4;
        
        //Hereby the item
        sprout = other.sprout;
        
        //Hereby block specific events
        event_user(0);
    }
    
    //Destroy
    instance_destroy();
}

//Handle block movement
event_user(0);

//Animate faster
if (hspeed < 0) && (dir == 1)
|| (hspeed > 0) && (dir == -1) {

    image_speed += 0.01;
    if (image_speed > 0.2)
        image_speed = 0.2;
}
else {

    image_speed -= 0.01;
    if (image_speed < 0.15)
        image_speed = 0.15;
}

