/// @description Peach's logic

//Inherit event from parent
event_inherited();

//If the player has jumped
if (jumping == 2)
&& (global.mount == 0)
&& (global.powerup != cs_pow_cape) {

    //If peach can float, start it.
    if (floatnow == 0)
    && (input_check_pressed(input.action0))
        floatnow = 1;
    
    //Otherwise
    else if (floatnow == 1) {
    
        //If 'action0' is pressed
        if (input_check(input.action0)) {
        
            //Increment timer
            floating++;
            
            //Stop vertical movement
            vspeed = 0;
            gravity = 0;
        }
        
        //Otherwise
        else if (!input_check(input.action0))
            floatnow = 2;
    }
    
    //Stop floating
    if (floatnow == 1)
    && (floating > 96)
        floatnow = 2;
}

//Reset offset if no longer floating
if (floatnow != 1) {

    offset = 0;
    if (offsetnext > 0)
        offsetnext = 0;
}

//Reset offset if swimming or climbing
if (state == statetype.climb)
|| (swimming == 1) 
|| (global.mount > 0) {

    floatnow = 0;
    offset = 0;
    if (offsetnext > 0)
        offsetnext = 0;
}

