/// @description Blow fire

//If the player does not exist
if (!instance_exists(obj_playerparent)) {

    alarm[2] = 1;
    exit;
}

//If there's no gravity
if (gravity == 0) {

    //If the dino torch is looking at the right
    if (xscale == 1) {
    
        //If the player is at the right
        if (obj_playerparent.x > x) {
        
            //Create flame
            flame = instance_create(x+4, y+10, obj_dinotorch_flame);
            
            //With 'flame'
            with (flame) {
            
                image_angle = 0;
                parent = other.id;
            }
            
            //Do not animate
            image_speed = 0;
            image_index = 0;
            
            //Set the sprite
            sprite_index = spr_dinotorch_blow;
        }
        
        //Otherwise, if the player is not at the right
        else {
        
            //Create flame
            flame = instance_create(x, y+6, obj_dinotorch_flame);
            
            //With 'flame'
            with (flame) {
            
                image_angle = 90;
                parent = other.id;
            }
            
            //Do not animate
            image_speed = 0;
            image_index = 1;
            
            //Set the sprite
            sprite_index = spr_dinotorch_blow;
        }
    }
    
    //Otherwise, if the dino torch is looking at the left
    else if (xscale == -1) {
    
        //If the player is at the left
        if (obj_playerparent.x < x) {
        
            //Create flame
            flame = instance_create(x-4, y+10, obj_dinotorch_flame);
            
            //With 'flame'
            with (flame) {
            
                image_angle = 180;
                parent = other.id;
            }
            
            //Do not animate
            image_speed = 0;
            image_index = 0;
            
            //Set the sprite
            sprite_index = spr_dinotorch_blow;
        }
        
        //Otherwise, if the player is not at the left
        else {
        
            //Create flame
            flame = instance_create(x, y+6, obj_dinotorch_flame);
            
            //With 'flame'
            with (flame) {
            
                image_angle = 90;
                parent = other.id;
            }
            
            //Do not animate
            image_speed = 0;
            image_index = 1;
            
            //Set the sprite
            sprite_index = spr_dinotorch_blow;
        }
    }
    
    //Stop him
    hspeed = 0;
    
    //Stop blowing fire
    alarm[3] = 120;
}

//Otherwise, wait
else
    alarm[2] = 1;

