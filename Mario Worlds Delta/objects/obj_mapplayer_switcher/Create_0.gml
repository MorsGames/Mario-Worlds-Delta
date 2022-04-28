/// @description Map buddy

//Current character
myplayer = global.player + 1;

//Character buffer
if (myplayer > 3)
    myplayer = 0;

//Current movement state    
state = 0;

//Goal positions
dest_x = x;
dest_y = y;

//Below player
depth ++;

//Whether the character is swimming
is_swimming = false;

//Collision variables
xorig = 7;
yorig = 7;

//Scale
xscale = 1;

//Switching
switching = false;

//Animate
animate = false;

