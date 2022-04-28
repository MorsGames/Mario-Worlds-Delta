/// @description Set up special effect for the timer text

//Do this only is levelcontrol is active
if (instance_exists(obj_levelcontrol)) {
    
    //Fade timer to red if less than 100 seconds
    if (global.time > -1)
    && (obj_levelcontrol.leveltime != 0) {
    
        //If there's less than 100 seconds left
        if (global.time <= 100) {
        
            //Fade out
            if (fadetype == -1) {
            
                fade -= 0.05;
                if (fade < 0.05) {
                
                    fade = 0;
                    fadetype = 1;
                }
            }
            
            //Otherwise, fade in
            else {
            
                fade += 0.05;
                if (fade > 1.1) {
                
                    fade = 1;
                    fadetype = -1;
                }            
            }        
        }
    }
    
    //This only applies to the SMA4 and Hello engine hud
    if ((obj_controller.hud_type == 2)
    || (obj_controller.hud_type == 5))
    && (instance_number(obj_goal_gate) > 0) {
        
        if (obj_levelcontrol.x > obj_goal_gate.x-256) 
        || (obj_levelcontrol.x > obj_goal_gate.x)
            display = 2;
        else
            display -= 0.025;
    }
    else
        display -= 0.025;
}

///Keep track of the time

if (instance_exists(obj_levelcontrol)) {

    displaytime = global.time;
    displaydragoncoins = global.dcoins;    
}

