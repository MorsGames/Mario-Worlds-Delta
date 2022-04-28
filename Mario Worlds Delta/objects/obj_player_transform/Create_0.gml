/// @description The player is evolving, ok no :)


//Set the pre-freeze image
create_prefreeze_surface();

//Destroy some objects first
with (obj_cape_fly) instance_destroy();
with (obj_spinner) instance_destroy();

//Old / New powerup
oldpowerup = 0;
newpowerup = 0;

//Loops
loop = 3;
loopnumb = 0;

//Screenshot
back = -1;

//If the screen can freeze
if (global.screenfreeze == true) {
    
    //Make the player invisible
    if (instance_exists(obj_playerparent)) {
    
        //Obtain the current sprite from the player
        sprite_index = obj_playerparent.sprite_index;
        
        //Obtain the current frame from the player
        image_index = obj_playerparent.image_index;
        
        //Do not animate
        image_speed = 0;
        
        //Make invisible
        obj_playerparent.visible = false;
        
        //Obtain cape
        if (obj_cape.visible == true) {
        
            //Obtain sprite from cape
            capesprite = obj_cape.sprite_index;
            capeframe = obj_cape.image_index;
            obj_cape.image_alpha = 0;
        }
        
        //Obtain rider sprite and frame
        if (global.mount == 1) {

            riderframe = obj_yoshi.f;
            m_ypos = obj_yoshi.m_ypos;
            obj_yoshi.m_vis = 0;
        }
        
        //Stay in position
        x = obj_playerparent.x;
        y = obj_playerparent.y;
        
        //Obtain the current facing direction from the player
        image_xscale = obj_playerparent.xscale;
    }
    
    //Make following objects invisible
    with (obj_water_tides) visible = 0;
    with (obj_lightparent) visible = 0;
    with (obj_lightcontrol) visible = 0;
    with (obj_effectsparent) visible = 0;
    with (obj_rainmaker) visible = 0;
    
    //Start animation
    alarm[0] = 1;
}

//Otherwise, transform instantly
else
    alarm[2] = 1;

