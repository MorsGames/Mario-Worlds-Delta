/// @description Save Fullscreen + Window size + VSync Settings

//Open the file
var file = file_text_open_write("settings.dat");

//Save fullscreen settings
file_text_write_string(file, string(fullscreen));
file_text_writeln(file);

//Save filtering settings
file_text_write_string(file, string(filter));
file_text_writeln(file);

//Save vsync settings
file_text_write_string(file, string(vsync));
file_text_writeln(file);

//Save HUD style
file_text_write_string(file, string(hud_type));
file_text_writeln(file);

//Save up key
file_text_write_string(file, string(global.key[input.up]));
file_text_writeln(file);

//Save down key
file_text_write_string(file, string(global.key[input.down]));
file_text_writeln(file);

//Save left key
file_text_write_string(file, string(global.key[input.left]));
file_text_writeln(file);

//Save right key
file_text_write_string(file, string(global.key[input.right]));
file_text_writeln(file);

//Save action 1 key
file_text_write_string(file, string(global.key[input.action0]));
file_text_writeln(file);

//Save action 2 key
file_text_write_string(file, string(global.key[input.action1]));
file_text_writeln(file);

//Save action 3 key
file_text_write_string(file, string(global.key[input.action2]));
file_text_writeln(file);

//Save select key
file_text_write_string(file, string(global.key[input.select]));
file_text_writeln(file);

//Save start key
file_text_write_string(file, string(global.key[input.start]));
file_text_writeln(file);

//Save up button
file_text_write_string(file, string(global.button[input.up]));
file_text_writeln(file);

//Save down button
file_text_write_string(file, string(global.button[input.down]));
file_text_writeln(file);

//Save left button
file_text_write_string(file, string(global.button[input.left]));
file_text_writeln(file);

//Save right button
file_text_write_string(file, string(global.button[input.right]));
file_text_writeln(file);

//Save action 1 button
file_text_write_string(file, string(global.button[input.action0]));
file_text_writeln(file);

//Save action 2 button
file_text_write_string(file, string(global.button[input.action1]));
file_text_writeln(file);

//Save action 3 button
file_text_write_string(file, string(global.button[input.action2]));
file_text_writeln(file);

//Save select button
file_text_write_string(file, string(global.button[input.select]));
file_text_writeln(file);

//Save start button
file_text_write_string(file, string(global.button[input.start]));
file_text_writeln(file);

//Autosave
file_text_write_string(file, string(global.autosave));
file_text_writeln(file);

//Close the file
file_text_close(file);

