/// @description draw_text_colour_shadowed(x,y,string,back_colour,front_colour,back_xoffset,back_yoffset,back_alpha,front_alpha);
/// @param x
/// @param y
/// @param string
/// @param back_colour
/// @param front_colour
/// @param back_xoffset
/// @param back_yoffset
/// @param back_alpha
/// @param front_alpha
function draw_text_colour_shadowed() {

	/*
	**  Usage:
	**      draw_text_colour_shadowed(x,y,string,back_colour,front_colour,back_xoffset,back_yoffset,back_alpha,front_alpha);
	**
	**  Arguments:
	**      argument0   ==  x position
	**      argument1   ==  y position
	**      argument2   ==  string
	**      argument3   ==  back text colour
	**      argument4   ==  front text colour
	**      argument5   ==  shadow x offset
	**      argument6   ==  shadow y offset
	**      argument7   ==  back alpha
	**      argument8   ==  front alpha
	**
	**  //Returns:
	**      The text given with a shadow with the given offset.
	*/

	//Draw the back text
	draw_text_colour(argument[0]+argument[5],argument[1]+argument[6],string_hash_to_newline(argument[2]),argument[3],argument[3],argument[3],argument[3],argument[7]);

	//Draw the front text
	draw_text_colour(argument[0],argument[1],string_hash_to_newline(argument[2]),argument[4],argument[4],argument[4],argument[4],argument[8]);



}
