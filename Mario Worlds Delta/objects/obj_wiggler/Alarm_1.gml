/// @description Move towards the player

//If the player does exist
if (instance_exists(obj_playerparent)) {

    //If the player is at the left and the wiggler is moving right
    if ((obj_playerparent.x < x) && (hspeed > 0))  {
    
        hspeed = -1;
        alarm[1] = 40;
    }
    
    //Otherwise, if the player is at the right and the wiggler is moving left
    else if ((obj_playerparent.x > x) && (hspeed < 0)) {
    
        hspeed = 1;
        alarm[1] = 40;
    }
    
    //Otherwise, repeat
    else
        alarm[1] = 40;
}
else
    alarm[1] = 1;
    
//Change anaimation speed
image_speed = 0.27;

//Restart speed
speed = 1;

//Change state
state = 2;

//Set the parts animation
for (i=1; i < seg; i++) 
    mybody[i].image_speed = 0.27;

