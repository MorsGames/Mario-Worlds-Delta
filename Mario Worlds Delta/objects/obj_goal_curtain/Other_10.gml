/// @description Handle the scale and position of the surface.

//Snap to the center of the view.
x = round(obj_player_clear.x);
y = round(obj_player_clear.y);

//This shrinks the image, you can change the values to control how fast the circle should shrink.
scale += -3.125;
if (scale < 0) {

    if (global.bonusgame == 0) {
    
        with (obj_controller) {
        
            pixelate = 60;
        }
        wmap_return();
    }
    else {
    
        //Enable bonus game
        global.bonusgame = 1;
        
        //Set warp details
        global.postchange = 1;
        global.exit_dir = cs_warp_down;
        global.exit_id = 0;
        
        //Go to the bonus room
        room_goto(rm_minigame_bonus);
    }
}

