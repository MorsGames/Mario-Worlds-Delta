/// @description update_shockwave();
function update_shockwave() {

	/*
	**  Usage:
	**      update_shockwave();
	**
	**  Returns:
	**      Updates the resolution needed for the shockwave shader to work properly
	*/

	//Telling the compiler to compile this script inline
	gml_pragma("forceinline");

	uni_resolution = shader_get_uniform(shd_shockwave,"resolution");
	var_resolution_x = __view_get( e__VW.WView, 0 );
	var_resolution_y = __view_get( e__VW.HView, 0 );



}
