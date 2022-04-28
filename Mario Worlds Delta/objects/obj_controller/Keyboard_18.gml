/// @description Handle all of the hot keys
    
//Restart the game when ALT+R are pressed.
if (keyboard_check_pressed(ord("R"))) {

    //Stop all playing sounds
    audio_stop_all();
    
    //Initialize globals
    init_globals();
    
    //Prevent screen pixelation
    with (obj_controller) {
    
        pixelate = 60;
    }
    
    //Go to the title screen
    room_goto(rm_title);
}

