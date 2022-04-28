/// @description Draw both stars and thump effect

//Stars
draw_sprite(spr_shellthump_st, star, x-star, y-star);
draw_sprite(spr_shellthump_st, star, x+star, y-star);
draw_sprite(spr_shellthump_st, star, x-star, y+star);
draw_sprite(spr_shellthump_st, star, x+star, y+star);

//Thump
if (!ready)
    draw_sprite(sprite_index,-1,x,y);

