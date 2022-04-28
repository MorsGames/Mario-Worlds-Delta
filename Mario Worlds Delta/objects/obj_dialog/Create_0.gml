/// @description Displays a message inside a box!

/*
**  This item uses creation code!
**
**  varmsg = Message to display in the message box.
**  mugshot = Mugshot of the character. (Use 'noone' for no mugshot)
*/

//Default Value:
varmsg = "No message was set";
mugshot = noone;

//Font
font = global.fontdialog; //global.fontmsg;

//Can the text be seen?
showing = false;

//Animate mugshot
anim = 0;

//Animate dialog
anim2 = 0;

//Create a screenshot
back = background_create_from_surface(application_surface, 0, 0, global.gw, global.gh, 0, 0);

//Deactivate everything except this object
instance_deactivate_all(1);

//Activate persistent object
instance_activate_object(obj_controller);

//Activate the HUD
instance_activate_object(obj_hud);

//Activate music object
instance_activate_object(obj_audio_loop_sound);

//Set the alarm to format the text
alarm[0] = 1;

/* */
/*  */
