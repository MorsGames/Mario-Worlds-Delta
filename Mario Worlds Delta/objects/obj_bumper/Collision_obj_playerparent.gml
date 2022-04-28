/// @description Bounce against the bumper
    
//Play 'Trampoline' sound
audio_stop_play_sound(snd_trampoline, 0, false);

//Bounce it
ready = 1;

//Reset scale
scale = 1;

//Set the horizontal speed
other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, other.y));

//Set the vertical speed
if (other.y < y-12) {

    other.vspeed = -3.4675;
    if (input_check(input.action0))
        other.jumping = 1;
    else
        other.jumping = 2;
}

//Otherwise, bounce downwards
else
    other.vspeed = lengthdir_y(3, point_direction(x, y, other.x, other.y));

