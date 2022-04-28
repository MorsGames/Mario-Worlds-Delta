/// @description Progression alarms

//Alarm 0, is player on a Yoshi?
if enterstate = 0 {
    
    //Time for first stop
    //Without Yoshi, stop closer
    if pseudomount == 0 {
        enterstate = 5;
        alarm[0] = doordistance - 23;
    }
    //With Yoshi, stop farther awawy
    else {
        enterstate = 1;
        alarm[0] = doordistance - 38;
    }
    exit;
}

//Alarm 1
if enterstate = 1 {
    enterstate = 2;
    exit;
}

//Alarm 2
if enterstate = 2.1 {
    ///Jump off Yoshi, enter state 3
    vspeed = -4;
    with instance_create(x,y,obj_yoshi) {
        colour = other.pseudomountcolour;
    }
    pseudomount = 0;
    enterstate = 3;
    audio_play_sound(snd_spin,0,0);
    exit;
}

//Alarm 3
if enterstate = 3.1 {
    enterstate = 4;
    exit;
}

//Alarm 4
if enterstate = 4.1 {
    ///Enter state 5
    enterstate = 5;
    
    //Countdown to next event
    alarm[0] = 65;
    exit;
}

//Alarm 5
if enterstate = 5 {
    enterstate = 6;
    exit;
}

//Alarm 6
if enterstate = 6.1 {
    enterstate = 7;
    alarm[0] = 60;
    exit;
}

//Alarm 7
if enterstate = 7 {
    with obj_castledoor {
        //Let the castle door know where to take the player, and play the open sound
        nextroom = other.destination;
        alarm[0] = 20;
    }
    enterstate = 8;
    alarm[0] = 90;
    exit;
}

//Alarm 8
if enterstate = 8 {
    enterstate = 9;
    alarm[0] = 50;
    exit;
}

//Alarm 9
if enterstate = 9 {
    //Set the depth to behind buildings, because player is entering castle now
    depth = 18;
    alarm[0] = 75;
    enterstate = 10;
    exit;
}

//Alarm 10
if enterstate = 10 {

    //Make door close
    with obj_castledoor {
        open = 3;
    }
    
    exit;
}

