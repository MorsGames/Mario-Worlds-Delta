/// @description Stop fading to black

//Set mode to fade from black
mode = 0;

//Destroy the HUD
with (obj_hud)

    instance_destroy();
    
//Destroy the map HUD
with (obj_hud_map)

    instance_destroy();

//If Mario Start! does not exist
if (!instance_exists(obj_mariostart)) {

    //Begin fading from black
    fade = 0;

    //Activate everything
    instance_activate_all();
}

//Delete the screenshot
if (background_exists(back))
    background_delete(back);

