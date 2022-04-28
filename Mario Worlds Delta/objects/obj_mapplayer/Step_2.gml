/// @description Animate the object

var current_player = global.player;

if (status == mapstate.switching) {

    global.player = last_player;

}

//If the player is ready
if (is_ready) {

    //Set the sprite
    sprite_index = player_map_select();
    
    //Set up the scale
    xscale = 1;
    
    //Set up the frame
    image_speed = 0;
    image_index = is_swimming;
}

//Otherwise
else {
    
    //If climbing
    if (is_climbing) {
    
        //Set up the scale
        xscale = 1;
        
        //If the player is riding a yoshi
        if (global.mount != 0)
            sprite_index = player_map_up();
        else
            sprite_index = player_map_climb();    
    }
    
    //Otherwise, if not climbing
    else {
    
        //If moving down or stopped
        if (direct == 270)
        || (status == mapstate.idle) {
        
            //Set up the sprite
            sprite_index = player_map();
        
            //Reset scale
            if (xscale != 1)
                xscale = 1;
        }
        
        //Otherwise, if moving up
        else if (direct == 90) {
        
            //Set up the sprite
            sprite_index = player_map_up();
        
            //Reset scale
            if (xscale != 1)
                xscale = 1;
        }
            
        //Otherwise, if moving to the side
        else {
            
            //Set up the sprite
            sprite_index = player_map_side();
            
            //Set the scale
            if (direct == 0)
                xscale = 1;
            else
                xscale = -1;
        }
    }
}

global.player = current_player;

