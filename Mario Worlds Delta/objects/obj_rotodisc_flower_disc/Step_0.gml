/// @description Update disc position

//Set position
angle += speedd*(clockwise*-1);
x = xstart + lengthdir_x(radius, angle);
y = ystart + lengthdir_y(radius, angle);

//Update radius
if ((radius <= maxradius) && (step == 0)) {

    radius += speedd;
    if (radius >= maxradius) {
    
        radius = maxradius; 
        step = 1;
    }
}
else if ((radius >= 0) && (step == 1)) {

    radius -= speedd;
    if (radius <= 0) {
    
        radius = 0; 
        step = 0;
    }
}

