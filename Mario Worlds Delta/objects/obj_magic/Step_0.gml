/// @description Magic logic

//Check for a flip block
var flip = collision_rectangle(bbox_left-2, bbox_top-2, bbox_right+2, bbox_bottom+2, obj_brick_flip, 0, 0);

//If there's a flip block in position
if (flip) {

    //Turn the flip block into another object
    with (flip) {
    
        //Get a random number
        other.int = choose(0, 1, 2, 3, 4, 5);
        
        //Get a random ite
        switch (other.int) {
            
            //Thwimp
            case (3): instance_create(x+8, y, obj_thwimp); break;
            
            //Coin
            case (4): {
            
                with (instance_create(x+8, y, obj_coin_alt))
                    hspeed = 0.5;                 
            } break;
            
            //1-Up
            case (5): {
            
                with (instance_create(x+8, y, obj_1up))
                    hspeed = 1;
            } break;
            
            //Default
            default:
                instance_create(x+8, y, obj_koopa_yellow); break;
        }
        
        //Destroy
        instance_destroy();
    }
    
    //Destroy this spell
    event_user(0);
}

//Wall collision
event_user(3);

//Floor collision
event_user(4);

//Destroy when outside the view
if (outside_view(16))
    instance_destroy();

