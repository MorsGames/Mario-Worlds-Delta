/// @description Split up the message if it is too long

//Iterate over all the characters in the message
for (i=1; i<string_length(text); i++) {

    if (string_height(string_hash_to_newline(string_copy(text, 1, min(i+1, string_length(text))))) > 40) {
    
        //Split off the lines after the new line to be displayed later
        newtext = string_copy(text, i+1, string_length(text)-i);
        text = string_copy(text, 1, i);
        
        //Break out of the loop
        break;
    }
}

//Set the number of characters being displayed
a = 0;

