/// @description Hammer Bro logic

//If not jumping through solids
if (throughsolid == 0) {

    //Default wall collision
    event_user(3);

    //Default floor collision
    event_user(4);
}

//Otherwise, if jumping through solids
else {

    //Gravity
    gravity = 0.25;

    //Cap vertical speed
    if (vspeed > 4) {
    
        vspeed = 4;
        gravity = 0;
    }
}

//Manage swimming state
event_user(8);

//Set up the facing direction.
if (!instance_exists(obj_playerparent))
|| (obj_playerparent.x < x)
    xscale = -1;
else
    xscale = 1;

