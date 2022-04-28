/// @description outside_view(distance)
/// @param distance
function outside_view() {

	/*
	**  Usage:
	**      outside_view(distance)
	**
	**  Given
	**      distance    = How much distance to check
	**
	**  Purpose:
	**      Checks if a object is outside the view and returns true if the object is outside.
	*/

	//Telling the compiler to compile this script inline
	gml_pragma("forceinline");

	//Return if the object is outside the view
	return (x < __view_get( e__VW.XView, view_current ) - argument[0])
	|| (y < __view_get( e__VW.YView, view_current ) - argument[0])
	|| (x > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + argument[0])
	|| (y > __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) + argument[0]);



}
