/// @description Pause

//If 'Alt' is not pressed
if (keyboard_check(vk_alt))
|| (instance_number(obj_playerparent) == 0)
exit;

//Pause the game
instance_create(0, 0, obj_pause);

//Clear the enter key
keyboard_clear(vk_enter);

