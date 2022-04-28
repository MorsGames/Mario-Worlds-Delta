/// @description Open the secret exit

//If the animation has not started and the player brings a key
if (ready == 0)
&& (other.mouthholder == obj_key)
&& (other.state = yoshistate.ridden)
&& (instance_exists(obj_playerparent)) {
    
    //Remember colour
    global.mountcolour = obj_yoshi.colour;    
    
    //Begin key sequence
    event_user(0);
    
    //Save the state of the key
    kx = -1000;
    ky = -1000;
    kd = 0;
    
    //Save the state of Yoshi, and delete him
    with (obj_yoshi) {
    
        //X Position
        other.mx = round(x);
        
        //Y Position
        other.my = round(y)
        
        //Sprite
        other.ms = sprite_index
        
        //Frame
        other.mi = image_index
        
        //Facing direction
        other.md = obj_playerparent.xscale;
        
        //Swallow key
        mouthholder = noone;
        
        //Destroy
        instance_destroy()
    }
    
    //Destroy the player parent
    with (obj_playerparent) instance_destroy();

    //Return to the world map after the animation
    alarm[0] = 120;
}

