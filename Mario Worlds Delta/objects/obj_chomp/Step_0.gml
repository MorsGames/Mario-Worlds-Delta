/// @description Chain Chomp logic

//If the chain chomp is not lunging
if (lunge == false) {

    //Gravity
    gravity = 0.25;
    
    //Cap vertical speed
    if (vspeed > 4)
        vspeed = 4
}
else
gravity = 0;

//If the chain chomp is idle
if (idle) {

    //Reverse horizontal speed.
    if (x < stop_l)
        hspeed = 1
    if (x > stop_r)
        hspeed = -1
    
    //If Mario does exist
    if (instance_exists(obj_playerparent)) {
    
        //If Mario is on sight
        if ((point_distance(obj_playerparent.x, obj_playerparent.y, x, y) < 1.5*maxdist) && (!ready)) {
        
            //Do not retreat
            retreat = 0
            
            //Lunge
            lunge = 1
            
            //Do not idle
            idle = 0
            
            //Got Mario
            ready = 1;
            
            //Set the motion
            if (obj_playerparent.x < originx)
                motion_set(random(85)+90,4);
            else
                motion_set(90-random(85),4);
        }
    }
}

//If the chain chomp is lunging
if (lunge) {

    //Find start position.
    start = instance_position(originx, originy, obj_chainchomp)
    
    //If the chomp is too far from the origin.
    if (x-originx > maxdist) {
    
        x = originx+maxdist
        alarm[0] = 60
        speed = 0
        with (start) {
        
            taunt = true;
        }   
    }
    else if (originx-x > maxdist) {
    
        x = originx-maxdist
        alarm[0] = 60
        speed = 0
        with (start) {
        
            taunt = true;
        }   
    }
    
    //If the chomp is higher than the origin position.
    if (originy-y > maxdist) {
    
        y = originy-maxdist
        alarm[0] = 60
        speed = 0
        with (start) {
        
            taunt = true;
        }   
    }
}

//If the chomp is retreating.
if (retreat) {
    
    if ((x < stop_l) && (hspeed < 0))
    || ((x > stop_r) && (hspeed > 0)) {
    
        //Do not lunge
        lunge = 0;
        
        //Idle
        idle = 1;
        
        //Do not retreat
        retreat = false;
    }
}

