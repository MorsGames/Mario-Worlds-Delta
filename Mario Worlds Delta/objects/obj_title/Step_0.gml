/// @description Manage background position, spotlight, and open the menu if certain inputs are pressed.

//Scale out the spotlight
if (scale < 300)

    scale += 3;
    
if (scale >= 0) {
    
    //Open menu initially
    if ((input_check_pressed(input.start))
    || (input_check_pressed(input.action0))
    || (input_check_pressed(input.action2)))
    && (!confirmed_selection) {
    
        if (scale >= 100) {
    
            //Play 'Menu' sound
            audio_play_sound(snd_fireball, 0, false);
            
        }
    
        //Set active mode
        alarm[3] = 2;
    
        //Confirm selection so that you cannot press the button again
        confirmed_selection = true;
    
        //Set spotlight scale to maximum
        scale = 300;
        
        //Make cursor visible
        display = true;
        alarm[0] = 20;
    
    }

}

//Set background 0 position
__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (1) );

//Set background 1 position
__background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) - (2) );

///Manage menus

//If the menu is not on key change mode
if (mode == 2) {

    var current_page = page;

    //If the player presses the 'Up' key
    if (input_check_pressed(input.up)) {
    
        //Make cursor visible
        display = true;
        alarm[0] = 20;
    
        //Play 'Fireball' sound
        audio_stop_play_sound(snd_fireball, 0, false);
    
        //Cycle between options
        if (current == 0)
        
            current = array_length_2d(menu,page)-1;
        else
        
            current --;
    }
    
    //Otherwise, if the player presses the 'Down' key
    else if ((input_check_pressed(input.down))
    || (input_check_pressed(input.select))) {
    
        //Make cursor visible
        display = true;
        alarm[0] = 20;
    
        //Play 'Fireball' sound
        audio_stop_play_sound(snd_fireball, 0, false);
    
        //Cycle between options        
        if (current == array_length_2d(menu,page)-1)
        
            current = 0;
            
        else
        
            current ++;
    }
    
    //Otherwise, if the player presses the 'Action 1' key
    else if (input_check_pressed(input.action1)) {
    
        var current_page = page;
    
        //File select & Options
        if (page == menupage.fileselect || page == menupage.options1) {
        
            //Go back to the 'Options' selection if you were in the Options menu
            if (page == menupage.options1)
            
                current = 1;
                
            else
            
                current = 0;
        
            //Go to first page
            page = menupage.main;
            
            //Play 'Fireball' sound
            audio_stop_play_sound(snd_fireball, 0, false);
            
        }
        
        //File Delete
        else if (page == menupage.filedelete) {
        
            //Go to File Select
            page = menupage.fileselect;
            
            //Reset current selection
            current = 0;
                
            //Play 'Fireball' sound
            audio_stop_play_sound(snd_fireball, 0, false);
        
        }
        
        //Options page 2
        else if (page == menupage.options2) {
    
            //Go to Options 1
            page = menupage.options1;
    
            //Bring the pointer selection 1 up
            current ++;
                
            //Play 'Fireball' sound
            audio_stop_play_sound(snd_fireball, 0, false);
            
        }
        
        //Keys 1/2
        else if (page == menupage.keys1) {
        
            //Go to Options
            page = menupage.options1;
            
            //Reset selection
            current = 0;
            
            //Play 'Fireball' sound
            audio_stop_play_sound(snd_fireball, 0, false);
        
        }
        
        //Keys 2/2
        else if (page == menupage.keys2) {
        
            //Go to Keys page 1
            page = menupage.keys1;
            
            //Bring the pointer selection 1 up
            current ++;
            
            //Play 'Fireball' sound
            audio_stop_play_sound(snd_fireball, 0, false);
        
        }
        
        //If the page has changed from pressing a button...
        if (page != current_page) {
        
            //Make the pointer show up
            display = true;
            
            //Set pointer timer
            alarm[0] = 20;
        
        }
    
    }
    
    //Otherwise, if the player presses 'Action 0'
    else if ((input_check_pressed(input.start))
    || (input_check_pressed(input.action0))
    || (input_check_pressed(input.action2))) {
    
        //Main
        if (page == menupage.main) {
        
            //Option 1: Start Game (Will need to change once saving is added)
            if (current == 0) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to file select
                page = menupage.fileselect;
                
                //Reset option to the top
                current = 0;
                
                //File info
                event_user(0);
        
            }
            
            //Option 2: Options
            else if (current == 1) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Options 1 page
                page = menupage.options1;
                
                //Reset option to top
                current = 0;
            }
            
            //Option 3: Exit
            else if (current == 2) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Exit the game
                game_end();
                
            }
            
        }

        //File selection
        else if (page == menupage.fileselect) {
        
            //Options 1 to 3: File selection
            if (current < 3) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Stop the stream...
                audio_stop_sound(global.stream);
                
                //...and free it from memory
                audio_destroy_stream(global.stream);
                global.stream = noone;
                
                //Check what file is selected
                switch (current) {
                
                    //File A
                    case (0): global.file = "MWDSave1.sav"; break;
                    
                    //File B
                    case (1): global.file = "MWDSave2.sav"; break;
                    
                    //File C
                    case (2): global.file = "MWDSave3.sav"; break;
                    
                }
                
                //If the file exists
                if (file_exists(global.file)) {
                
                    //Load the game file
                    load(global.file);
                    
                    //Prepare to go to the next room
                    alarm[2] = 2;

                }
                
                //Otherwise, go to the intro screen
                else {
                
                    alarm[5] = 2;
                   
                }
                
            }
            
            //Chose 3: File Delete
            else if (current == 3) {
            
                //Go to file delete
                page = menupage.filedelete;
                
                //Set the choice
                current = 0;
                
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
            
            }
            
            //Choice 4: Back
            else if (current == 4) {
                                
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
            
                //Go to Main page
                page = menupage.main;
                
                //Set the choice
                current = 0;       
            }            
        }
        
        //Page 2: Options
        else if (page == menupage.options1) {
        
            //Option 1: Keyboard configuration
            if (current == 0) {
                
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Keys 1 page
                page = menupage.keys1;
                
                //Set the choice
                current = 0;
                
            }
            
            //Option 2: Window size
            else if (current == 1) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
            
                //Switch filter
                with (obj_controller) {
                
                    if (filter >= 0) && (filter < 3) {
                    
                        filter ++;
                        fullscreen = false;
                        
                    } else if (filter == 3) {
                    
                        fullscreen = !fullscreen;
                        
                        if (!fullscreen)
                        
                            filter = 0;
                            
                    }
                    
                    //Apply settings
                    event_user(1);
                      
                }
                
            }
            
            //Option 3: Auto-Save
            else if (current == 2) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
            
                global.autosave = !global.autosave;
                
            }
            
            //Option 4: HUD Style
            else if (current == 3) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Enable FPS on screen
                with (obj_controller) {
                
                    hud_type++;
                    if (hud_type > 5)
                        hud_type = 0;
                        
                }
                
            }
            
            //Option 5: Next Page
            else if (current == 4) {
                            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to page page 2 of options
                page = menupage.options2;
                
                //Set the choice
                current --;   
                                 
            }
            
            //Option 6: Back
            else if (current == 5) {
                            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Main page
                page = menupage.main;
                
                //Set the choice
                current = 0;   
                                 
            }
            
        }
        
        else if (page == menupage.options2) {

            //Option 1: V-Sync
            if (current == 0) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Enable V-Sync
                with (obj_controller) {
                
                    //Toggle vertical syncronization
                    vsync = !vsync;
                    
                    //Apply settings
                    event_user(1);
                    
                }
                
            }
            
            //Option 2: FPS
            else if (current == 1) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Enable FPS on screen
                with (obj_controller) {
                
                    //Toggle FPS
                    showfps = !showfps;
                }
                
            }
            
            //Option 6: Credits
            else if (current == 2) {
            
                //Stop the stream...
                audio_stop_sound(global.stream);
                
                //...and free it from memory
                audio_destroy_stream(global.stream);
                global.stream = noone;
                
                //Disable pixelation
                with (obj_controller) {
                
                    pixelate = 60;
                }
            
                audio_play_sound(snd_enterstage, 0, false);     
                room_goto(rm_credits);

            }
            
            //Option 5: Next Page
            else if (current == 3) {
                            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to page page 1 of options
                page = menupage.options1;
                
                //Set the choice
                current ++;   
                                 
            }
            
            //Option 6: Back
            else if (current == 4) {
                            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Main page
                page = menupage.main;
                
                //Set the choice
                current = 0;   
                                 
            }
            
        }
        
        //Keys 1/2
        else if (page == menupage.keys1) {
        
            //Options 1 to 5
            if (current < 5) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Set 'Key' mode
                mode = 3;
                
                //Switch current
                switch (current) {
                
                    case (0): set_keys(0, "PRESS NEW 'RUN/SHOOT' KEY...", vk_control); break;
                    case (1): set_keys(1, "PRESS NEW 'JUMP' KEY...", vk_shift); break;
                    case (2): set_keys(2, "PRESS NEW 'SPIN' KEY...", vk_space); break;
                    case (3): set_keys(3, "PRESS NEW 'RESERVE' KEY...", vk_backspace); break;
                    case (4): set_keys(4, "PRESS NEW 'PAUSE' KEY...", vk_enter); break;
                }                    
                
                //Set 'Active' mode
                alarm[3] = 3;
            }
        
            //Option 6: Reset keys
            else if (current == 5) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Reset all keys
                alarm[4] = 1;
            }
            
            //Option 7: Page 2 / 2
            else if (current == 6) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Keys 2
                page = menupage.keys2;
                
                //Move pointer selection down 1
                current --;
                
            }
            
            //Option 8: Back
            else if (current == 7) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Options 1 menu
                page = menupage.options1;
                
                //Set the choice
                current = 0;
            }
            
        }
        
        //Keys 2/2
        else if (page == 4) {
    
            //Options 1 to 4
            if (current < 4) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Set 'Key' mode
                mode = 3;
                
                //Switch current
                switch (current) {
                
                    case (0): set_keys(5, "PRESS NEW 'UP' KEY..", vk_up); break;
                    case (1): set_keys(6, "PRESS NEW 'DOWN' KEY...", vk_down); break;
                    case (2): set_keys(7, "PRESS NEW 'LEFT' KEY...", vk_left); break;
                    case (3): set_keys(8, "PRESS NEW 'RIGHT' KEY...", vk_right); break;
                }                    
                
                //Set 'Active' mode
                alarm[3] = 3;
            }
        
            //Option 5: Reset keys
            else if (current == 4) {
            
                //Play 'Correct' sound
                audio_stop_play_sound(snd_correct, 0, false);
                
                //Reset all keys
                alarm[4] = 1;
            }
            
            //Option 6: Page 1 / 2
            else if (current == 5) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Keys 1 menu
                page = menupage.keys1;
                
                //Bring the pointer selection 1 up
                current ++;
                
            }
                            
            //Option 7: Back
            else if (current == 6) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Go to Options 1 menu
                page = menupage.options1;
                
                //Set the choice
                current = 0;
            }
            
        }
        
        //File delete
        else if (page == menupage.filedelete) {
        
            //Options 1 to 3: File deletion
            if (current < 3) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
                
                //Check what file is selected
                switch (current) {
                
                    //File A
                    case (0):
                        file_delete("MWDSave1.sav");
                        file_delete("MWDInfo1.ini");
                        break;
                    
                    //File B
                    case (1):
                        file_delete("MWDSave2.sav");
                        file_delete("MWDInfo2.ini");
                        break;
                    
                    //File C
                    case (2):
                        file_delete("MWDSave3.sav");
                        file_delete("MWDInfo3.ini");
                        break;
                    
                }
                
                //Update file info
                event_user(0);
                
            }
            
            //Chose 3: Go back to File Select
            else if (current == 3) {
            
                //Play 'Coin' sound
                audio_stop_play_sound(snd_coin, 0, false);
            
                //Go to file select
                page = menupage.fileselect;
                
                //Set the choice
                current = 0;
            
            }
          
        }
        
    }
    
    //If the page has changed from pressing a button...
    if (page != current_page) {
    
        //Make the pointer show up
        display = true;
        
        //Set pointer timer
        alarm[0] = 20;
    
    }
        
}

//Update HUD message
with (obj_controller) {

   switch (hud_type) {
    
        //SMA2
        case (1): other.menu[menupage.options1,3] = "HUD TYPE: SMA2"; break;
        
        //SMA4
        case (2): other.menu[menupage.options1,3] = "HUD TYPE: SMA4"; break;
        
        //Minimalist
        case (3): other.menu[menupage.options1,3] = "HUD TYPE: MINI/SCORE"; break;
        
        //Minimalist (No Score)
        case (4): other.menu[menupage.options1,3] = "HUD TYPE: MINI/NO SCORE"; break;
        
        //Hello Engine
        case (5): other.menu[menupage.options1,3] = "HUD TYPE: HELLO ENGINE"; break;
        
        //Default
        default: other.menu[menupage.options1,3] = "HUD TYPE: DEFAULT"; break;
    }
        
}

//Update auto-save text
if (global.autosave)
    menu[menupage.options1,2] = "AUTO-SAVE: ON";
else
    menu[menupage.options1,2] = "AUTO-SAVE: OFF";

//Update V-Sync text
if (obj_controller.vsync)
    menu[menupage.options2,0] = "V-Sync: ON";
else
    menu[menupage.options2,0] = "V-Sync: OFF";
    
//Update FPS text
if (obj_controller.showfps)
    menu[menupage.options2,1] = "FPS: ON";
else
    menu[menupage.options2,1] = "FPS: OFF";
    
//Update Key Text
menu[menupage.keys1,0] = "RUN/SHOOT ... " + string(key_to_string(global.key[input.action1]));
menu[menupage.keys1,1] = "JUMP      ... " + string(key_to_string(global.key[input.action0]));
menu[menupage.keys1,2] = "SPIN      ... " + string(key_to_string(global.key[input.action2]));
menu[menupage.keys1,3] = "RESERVE   ... " + string(key_to_string(global.key[input.select]));
menu[menupage.keys1,4] = "PAUSE     ... " + string(key_to_string(global.key[input.start]));
menu[menupage.keys2,0] = "Up        ... " + string(key_to_string(global.key[input.up]));
menu[menupage.keys2,1] = "Down      ... " + string(key_to_string(global.key[input.down]));
menu[menupage.keys2,2] = "Left      ... " + string(key_to_string(global.key[input.left]));
menu[menupage.keys2,3] = "Right     ... " + string(key_to_string(global.key[input.right]));



