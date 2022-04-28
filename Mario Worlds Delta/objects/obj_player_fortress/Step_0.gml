/// @description Fortress movement

//Inherit step event
event_inherited();

//Walk
if (enterstate = 1) || (enterstate = 9) {

    hspeed += 0.0324;
    if (hspeed > 1)
        hspeed = 1;
        
}
//Slow down towards castle
if (enterstate = 2) || (enterstate = 6) {

    hspeed -= 0.0324;
    
    if hspeed <= 0 {
    
        //Next to the castle, dismount Yoshi
        if (enterstate = 2) {
        
            hspeed = 0;
            alarm[0] = 20;
            enterstate = 2.1;
            
        }
        
        //Right in front of the castle, pause
        if (enterstate = 6) {
        
            hspeed = 0;
            alarm[0] = 20;
            enterstate = 6.1;
            
        }
        
    }
    
}

if (enterstate = 3) {

    image_xscale = -1;
    hspeed = -.7;
    alarm[0] = 55;
    enterstate = 3.1;
    
}
if (enterstate = 4) {

    hspeed += 0.0324;
    if (hspeed >= 0) {
    
        hspeed = 0;
        alarm[0] = 20;
        enterstate = 4.1;
        
    }
    
}
if (enterstate = 5) {

    image_xscale = 1;
    hspeed += 0.0324;
    if (hspeed > 1.2)
        hspeed = 1.2;
        
}

///Skip scene

if allowskip = true {

    if (input_check_pressed(input.start))
    || (input_check(input.action0))
    || (input_check(input.action2)) {
    
        room_goto(destination);
    
    }
    
}

