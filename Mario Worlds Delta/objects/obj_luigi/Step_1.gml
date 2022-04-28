/// @description Set up different physics for Luigi when it is or not riding a yoshi

//If the player is riding a yoshi
if (global.mount == 1) {

    //Jump Strength
    jumpstrength = 4.9675;
    jumpstrength_spin = 4.5625;
    jumpstrength_bounce = 5.725;
    
    //Trampoline boost
    trampoline_boost = 7.5;
    
    //Note boost
    note_boost = 6;
    
    //Acceleration
    acc = 0.09375;
    
    //Acceleration (when turning)
    acc_turn = 0.15625;
    
    //Deceleration
    dec = 0.0625;
    
    //Gravity
    grav = 0.375;
    
    //Gravity (when jumping)
    grav_alt = 0.1875;
    
    //Gravity (when holding the jump button while falling)
    grav_hold = 0.1875;
    
    //In water acceleration
    acc_swim = 0.025;
    
    //In water acceleration (when turning)
    acc_turn_swim = 0.05;
    
    //In water deceleration
    dec_swim = 0.025;
    
    //Gravity (Underwater)
    grav_swim = 0.025;
    
    //Minimum horizontal speed
    hspeed_walk = 1.25;
    
    //Maximum horizontal speed
    hspeed_run = 2.25;
    
    //Maximum horizontal speed (Full Meter)
    hspeed_run_full = 3;
    
    //Max falling speed
    vspeedmax = 4;
}

//Otherwise
else {

    //Jump Strength
    jumpstrength = 3.9465625;
    jumpstrength_spin = 3.5921875;
    jumpstrength_bounce = 4.29375;
    
    //Trampoline boost
    trampoline_boost = 6;
    
    //Note boost
    note_boost = 5;
    
    //Acceleration
    acc = 0.09375;
    
    //Acceleration (when turning)
    acc_turn = 0.15625;
    
    //Deceleration
    dec = 0.0625;
    
    //Gravity
    grav = 0.225;
    
    //Gravity (when jumping)
    grav_alt = 0.1125;
    
    //Gravity (when holding the jump button while falling)
    grav_hold = 0.1125;
    
    //In water acceleration
    acc_swim = 0.025;
    
    //In water acceleration (when turning)
    acc_turn_swim = 0.05;
    
    //In water deceleration
    dec_swim = 0.025;
    
    //Gravity (Underwater)
    grav_swim = 0.025;
    
    //Minimum horizontal speed
    hspeed_walk = 1.15;
    
    //Maximum horizontal speed
    hspeed_run = 2.15;
    
    //Maximum horizontal speed (Full Meter)
    hspeed_run_full = 2.9;
    
    //Max falling speed
    vspeedmax = 3.5;
}

