/// @description Seesaw Logic

//If player ever exists
if (instance_exists(obj_playerparent)) {

    //If player is on seesaw
    if (obj_playerparent.gravity == 0)
    && (place_meeting(x, y-8, obj_playerparent)) {
    
        //Rotate seesaw relative to player position
        image_angle += add;
        add += -(1/70)*(obj_playerparent.x - x);
        
        //Limit speed
        if (abs(add) > 1.3) 
            add = 1.3 * sign(x-obj_playerparent.x);
    
        //Set player horizontal speed 
        obj_playerparent.hspeed -= (0.05+(abs(image_angle)/360))*sign(image_angle);
    }
    else {
    
        //Otherwise slow down the rotation
        add = max(0,abs(add)-0.04)*sign(add);
        image_angle += add;
    }
}

//Set angle value calculation
degree = image_angle;

//Player elavation to not embed deep into platform
extra = 20+(abs(image_angle)/20);

//Limit angle 
if (image_angle >= 45)
    image_angle = 45; 
else if (image_angle <= -45)
    image_angle = -45; 

