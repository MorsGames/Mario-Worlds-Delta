/// @description Mario Worlds Delta Controller Object (This is required to run the game, do not remove it.)
/// @param This is required to run the game
/// @param  do not remove it.

/*Change this option to 'true' for save files to load:
-Powerup State
-Current Mount & Mount Colour
-Lives
-Coins
-Score
-Reserve item
-Goal tape bonus*/
global.load_state = false;

//Change this option to 'true' to save after every level!
//(Otherwise, saves after castles & Switch Palaces)
global.alt_save = false;

//Initialize Global Variables
init_globals();

//Initialize Shader Variables
init_pixel();
init_shockwave();

//Current file
global.file = 0;

//Remember last room
last_room = noone;

//Coins collected in room
coins = 0;

//Remember HUD Type
hud_type = 0;

//How the screen is fading
//0: From black
//1: To black
mode = 0;

//How much the screen is faded
fade = 0;

//Screenshot of the game, if it exists
back = -1;

//TV Mode?
tvmode = 0;

//Pixelate screen
pixelate = 0;

//Shake variable
shake = 0;
shake_anim = 0;
alarm[9] = 1;
yport = 0;

//Game message
message = "";

//Display FPS
showfps = false;

//Gives extra lives
givelives = 0;
alarm[7] = 1;

//Frames
frame = 0;

//Restart game
restart = false;

//Game width / heigh
global.gw = 256;
global.gh = 224;

//Freeze the screen?
global.screenfreeze = true;

//In-Game Font
global.font = font_add_sprite(spr_font, ord("!"), 0, 0);

//In-HUD Numbers
global.fontnumb = font_add_sprite(spr_font_numb, ord("0"), 0, 0);

//In-HUD Gold Numbers
global.fontnumbgold = font_add_sprite(spr_font_numb_gold, ord("0"), 0, 0);

//In-HUD Large Numbers
global.fontnumblarge = font_add_sprite(spr_font_numb_large, ord("0"), 0, 0);

//In-Dialogue Font
global.fontdialog = font_add_sprite(spr_font_dialogue, ord("!"), 1, 0);

//In-Message Font
global.fontmsg = font_add_sprite(spr_font_message, ord("!"), 0, 0);

//SMA4 In-Message Font
global.fontmsg_alt = font_add_sprite(spr_font_message_alt, ord("!"), 0, 0);

//Disable application surface automatic drawing
application_surface_draw_enable(0)

//Set the epsilon value for floating point numbers
math_set_epsilon(0.000001);

/* */
/*  */
