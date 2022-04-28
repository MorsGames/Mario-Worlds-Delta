/// @description Handle various in-game variables

//Update Shockwave shader
update_shockwave();

//Increment frames
frame += 0.5;

//Decrement pixelation
pixelate--;

//Prevent lives from going over 999
if (lives > 99)
    lives = 99;

//Prevent score from going over 999.999.990
if (score > 9999990)
    score = 9999990;

///Gamepad 'Pause' key fix

//Handle 'Start' key press in gamepad
if (input_check_pressed(input.start))
    keyboard_key_press(vk_enter);
else
    keyboard_key_release(vk_enter);

