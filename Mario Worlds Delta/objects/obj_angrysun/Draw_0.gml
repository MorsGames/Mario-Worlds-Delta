/// @description Draw Angry Sun

if (ready == 0)
    draw_sprite_ext(sprite_index,-1,round(__view_get( e__VW.XView, 0 ))+32,round(__view_get( e__VW.YView, 0 ))+48,1,1,0,c_white,1);
else
    draw_sprite_ext(sprite_index,-1,round(__view_get( e__VW.XView, 0 ))+obj_angrysun_movement.x,round(__view_get( e__VW.YView, 0 ))+obj_angrysun_movement.y,1,1,0,c_white,1);

