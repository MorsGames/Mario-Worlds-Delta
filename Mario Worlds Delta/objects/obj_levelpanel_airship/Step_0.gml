/// @description Manage offset

//If the level has been beaten, or is about to be cleared, don't move.
if ((beaten != 0)
|| (instance_place(x,y,obj_mapplayer)
&& (global.clear > 0))) {

    exit;
    
}

//X Movement
xsp += 0.05*xscale;
xoffset += xsp;

//Cap X Movement
if (xsp > 0.375)
    xsp = 0.375;
else if (xsp < -0.375)
    xsp = -0.375;

//Y Movement
yoffset = sin(timer*0.1)*2;
timer++;

//Switch sides
if (xoffset > 14)
    xscale = -1;
else if (xoffset < -14)
    xscale = 1;

