/// @description Dialogue logic

//Advance the text if the 'Shift' key is pressed.
if (input_check_pressed(input.action0)) {

    //If text is being displayed
    if (showing) {
    
        //If the full message is not displayed yet, display it all.
        if (a < string_length(text))        
            a = string_length(text)+1;
        
        //Otherwise
        else {
    
            //If there is more to be displayed
            if (newtext != "") {
    
                //Make the new text the current text
                text = newtext;
                newtext = "";
    
                //Split up the message if it is too long
                event_user(0);
            }
    
            //Otherwise, end dialog.
            else {
            
                //Delete the screenshot
                background_delete(back);
            
                //Activate everything
                instance_activate_all();
                
                //Reset the state of the shift key
                keyboard_clear(input.action0);
                
                //Destroy the message box
                instance_destroy();
            }
        }
    }
}

