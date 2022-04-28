/// @description Ferris platform logic

/*
// To prevent the screen from going nuts, do not change the events of this object.
*/

//If the platforms are moving.
if (active == true) {

    //Check if the player is above the platforms.
    for (i=0; i<amount; i++;) {
    
        //Check up the position of the platform.
        oldx = 0;
        oldy = 0;
        
        //Set the position of the platform.
        platform[i].x = x+8+distance*cos((angle+(i*360/amount))*pi/180);
        platform[i].y = y-distance*sin((angle+(i*360/amount))*pi/180);
        
        //Set the position of the platform.
        chain[i].x = x+8+distance*cos((angle+(i*360/amount))*pi/180);
        chain[i].y = y-distance*sin((angle+(i*360/amount))*pi/180);
    }
}

//Set the position of the platform.
angle += spd*(turn*-1);
if (angle > 360)
    angle -= 360;

/* */
/*  */
