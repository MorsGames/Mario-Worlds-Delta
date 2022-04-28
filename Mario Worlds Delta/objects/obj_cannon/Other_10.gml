/// @description Get base variables

//Check if there's ground below
if (place_meeting(x, y+1, obj_semisolid))
    d = 1;
    
//Check if there's a ceiling above
if (place_meeting(x, y-1, obj_solid))
    u = 1;
    
//If there's not ground or a ceiling, hang on wall
if (d == 0)
&& (u == 0) {
    
    //Check if there's a wall to the left
    if (place_meeting(x-1, y, obj_solid))
        l = 1;
        
    //Check if there's a wall to the right
    if (place_meeting(x+1, y, obj_solid))
        r = 1;
}

