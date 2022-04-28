/// @description Interact with player

if parent.type = 0 {

    //If it's a Lakitu, give Mario a 1-up
    instance_create(x,y,obj_1up);
    instance_destroy();
    
} else {

    //Otherwise, hurt Mario because it's a flame
    with (other) event_user(0);
    
}

