/// @description Go to title

//If the credits cutscene can be exited
if (ready == 5) {
        
    //Stop the stream...
    audio_stop_sound(global.stream);
    
    //...and free it from memory
    audio_destroy_stream(global.stream);
    global.stream = noone;
    
    //Disable pixelation
    with (obj_controller) {
    
        pixelate = 60;
    }
    
    //Initialize globals
    init_globals();
    
    //Go to the title_screen
    room_goto(rm_title);
}

