/// @description Render me

//Draw the rope
a = ropelength
b = 16
while (a > 0) {

    //Set the rope frame
    if (a = 1)
        draw_sprite(spr_rope, 1, x+8, y+b-2);
    else {
       
        draw_sprite(spr_rope, 0, x+8, y+b-2);
    }
    
    //Adds some rope parts
    a -= 1
    b += 16
}

//Draw the engine
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, image_blend, 1);

