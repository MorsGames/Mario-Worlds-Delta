/// @description Update palette

if (instance_exists(obj_invincibility)) {
    
    //Increment isflashing and reset it if required
    isflashing++;
    if (isflashing > 3) {
    
        isflashing = 0;
    }
    
    //If the invincibility timer is greater than 2 seconds
    if (obj_invincibility.alarm[0] > 120)
        alarm[2] = 1;
    else
        alarm[2] = 4;
}
else {

    isflashing = 0;
    alarm[2] = 1;
    exit;
}

