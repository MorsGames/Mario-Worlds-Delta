/// @description Load Fullscreen + Window size + HUD + VSync Settings

//If the 'settings.dat' file exist.
if (file_exists("settings.dat")) {

    //Open the file
    var file = file_text_open_read("settings.dat");    

    //Set fullscreen mode based on the read value
    fullscreen = real(file_text_read_string(file));
    file_text_readln(file);

    //Set filtering mode based on the read value
    filter = real(file_text_read_string(file));
    file_text_readln(file);

    //Set vsync based on the read value
    vsync = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set hud based on the read value
    hud_type = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Up' Key
    global.key[input.up] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Down' key
    global.key[input.down] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Left' key
    global.key[input.left] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Right' key
    global.key[input.right] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Action 0' Key (Default: Z)
    global.key[input.action0] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Action 1' Key (Default: X)
    global.key[input.action1] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Action 2' Key (Default: C)
    global.key[input.action2] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Select' Key (Default: Backspace)
    global.key[input.select] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Start' Button (Default: Enter)
    global.key[input.start] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Up' Button
    global.button[input.up] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Down' Button
    global.button[input.down] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Left' Button
    global.button[input.left] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Right' Button
    global.button[input.right] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Action 0' Button (Default: A)
    global.button[input.action0] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Action 1' Button (Default: X)
    global.button[input.action1] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Action 2' Button (Default: B)
    global.button[input.action2] = real(file_text_read_string(file));
    file_text_readln(file);
            
    //Set saved 'Select' Button (Default: Select)
    global.button[input.select] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set saved 'Start' Button (Default: Start)
    global.button[input.start] = real(file_text_read_string(file));
    file_text_readln(file);
    
    //Set autosave state (Default: true)
    global.autosave = real(file_text_read_string(file));

    //Close the file
    file_text_close(file);
    
}
else {

    //Fullscreen is off by default
    fullscreen = 0;

    //Set the window to double of it's original size
    filter = 2;

    //VSync is off by default
    vsync = 0;
    
    //Default ketboard configs
    
    //Up key
    global.key[input.up] = vk_up;
    
    //Down key
    global.key[input.down] = vk_down;
    
    //Left key
    global.key[input.left] = vk_left;
    
    //Right key
    global.key[input.right] = vk_right;
    
    //Action 1 (Shift)
    global.key[input.action0] = vk_shift;
    
    //Action 2 (Control)
    global.key[input.action1] = vk_control;
    
    //Action 3 (Space)
    global.key[input.action2] = vk_space;
    
    //Select Key
    global.key[input.select] = vk_backspace;
    
    //Start Key
    global.key[input.start] = vk_enter;
    
    //Default controller configs
    
    //D-Pad Up
    global.button[input.up] = gp_padu;
    
    //D-Pad Down
    global.button[input.down] = gp_padd;
    
    //D-Pad Left
    global.button[input.left] = gp_padl;
    
    //D-Pad Right
    global.button[input.right] = gp_padr;
    
    //Action 1 (A)
    global.button[input.action0] = gp_face1;
    
    //Action 2 (X)
    global.button[input.action1] = gp_face3;
    
    //Action 3 (B)
    global.button[input.action2] = gp_face2;
    
    //Select (Select)
    global.button[input.select] = gp_select;
    
    //Start (Start)
    global.button[input.start] = gp_start;
    
    //Set autosave default to true
    global.autosave = true;
    
}

//Apply loaded settings
alarm[5] = 1;

//Go to title screen
alarm[4] = 200;

//Play 'Coin' sound
audio_stop_play_sound(snd_coin, 0, false);

