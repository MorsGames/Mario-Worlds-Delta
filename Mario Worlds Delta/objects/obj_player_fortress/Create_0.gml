/// @description The player is entering a fortress/ghost house/etc
            
//Type of castle?
    //Castle - 0
    //Ghost house - 1
    //No Yoshi zone (unused in SMW) - 2
doortype = 0;

//Make the player walk
alarm[0] = 20;

//Progression state on entering
enterstate = 0;

//Timer countdown for each action to occur, I didn't want to use alarms
entertimer = 0;

//Next room
destination = 0;

//Anim
anim = 0;

//Cape anim
anim2 = 0;
capespr = spr_cape;

//Player on Yoshi values, pseudo mount because technically the player still has Yoshi
pseudomount = global.mount;
pseudomountcolour = global.mountcolour;

//Player sprite on Yoshi
m = player_ride();

//Player Y pos
m_ypos = 0;

//Whether the object is swimming
swimming = false;

//Is the object in a slope?
slope = false;

//Castle door
doordistance = 128;
entrancedoor = instance_create(x+128,other.y+16,obj_castledoor);

//Initiate door type
alarm[1] = 1;

//Skip allow
alarm[2] = 6;
allowskip = false;

