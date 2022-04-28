/// @description Rocky Wrench logic

//Make stompable if the player jumps
if (instance_exists(obj_playerparent)) {

    //If the player is jumping
    if (obj_playerparent.state == statetype.jump) {
    
        //Make it stompable
        stomp = 0;
        
        //Hide semisolid
        mytop.x = -1000;
        mytop.y = -1000;
    }
    
    //Otherwise, if the player is not jumping
    else {
    
        //Make non-stompable
        stomp = 3;
        
        //Set semisolid position
        mytop.x = x-8;
        mytop.y = bbox_top;
    }
}
else {

    //Make not stompable
    stomp = 3;
    
    //Set semisolid position
    mytop.x = x-8;
    mytop.y = bbox_top;
}

//Depth
depth = 10;

//Face towards the player
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

