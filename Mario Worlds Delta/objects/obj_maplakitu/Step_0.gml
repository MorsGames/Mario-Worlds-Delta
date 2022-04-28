/// @description Move towards the player

//If the player is at the left
if (obj_mapplayer.x+8 < x+8) {

    hspeed -= 0.0324;
    if (hspeed < -1.5)
        hspeed = -1.5;
}
    
//Otherwise, if the player is at the bottom
else if (obj_mapplayer.x+8 > x+8) {

    hspeed += 0.0324;
    if (hspeed > 1.5)
        hspeed = 1.5;
}

//If the player is above
if (obj_mapplayer.y+8 < y+8) {

    vspeed -= 0.0324;
    if (vspeed < -1.5)
        vspeed = -1.5;
}
    
//Otherwise, if the player is at the bottom
else if (obj_mapplayer.y+8 > y+8) {

    vspeed += 0.0324;
    if (vspeed > 1.5)
        vspeed = 1.5;
}

