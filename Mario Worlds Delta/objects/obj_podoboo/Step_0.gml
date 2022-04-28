/// @description Podoboo logic

//Update death sprite with current sprite
deathsprite = sprite_index;

//Make it fall when reaching start position.
if ((y < ystart+39) && (ready == true)) {

    //Make it fall.
    ready = false;
    gravity = 0.2;
}

//Bounce if outside the room.
if (bbox_top > room_height) {

    if (!ready) {
    
        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[0] = 10;
    }
}

//Bounce in contact with lava.
lava = collision_rectangle(bbox_left, bbox_bottom+7, bbox_right, bbox_bottom+7, obj_lava, 0, 0);
if (lava) {

    //Bounce.
    if ((!ready) && (vspeed > 0)) {
    
        //Change sprite depending of lava colour
        switch (lava.sprite_index) {
        
            //Choco
            case (spr_lava_choco): sprite_index = spr_podoboo_choco; break;
            
            //Poison
            case (spr_lava_poison): sprite_index = spr_podoboo_poison; break;
            
            //Default
            default: sprite_index = spr_podoboo; break;
        }

        //Make it stop
        ready = true;
        
        //Stop after 10 steps.
        alarm[0] = 10;
        
        //Create lava splash
        with (instance_create(x, lava.y-12, obj_smoke)) {
        
            //Change splash sprite based on current sprite
            switch (other.sprite_index) {
            
                //Choco
                case (spr_podoboo_choco): sprite_index = spr_splash_choco; break;
                
                //Poison
                case (spr_podoboo_poison): sprite_index = spr_splash_poison; break;
                
                //Default
                default: sprite_index = spr_splash_lava; break;
            }
        }
    }
}

//Set the scale.
xscale = 1;

//Prevent it from falling too fast.
if (vspeed > 6)
    vspeed = 6;

