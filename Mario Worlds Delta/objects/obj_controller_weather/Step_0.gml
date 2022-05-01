/// @description Generate rain and snow drops

if (!instance_exists(obj_player_dead)) {

	/// Generate rain drops
	if (rain) {

	    repeat (strength) {
        
	        with (instance_create(random_range(__view_get( e__VW.XView, view_current )-global.gw, __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+global.gw), __view_get( e__VW.YView, view_current )-5, obj_rain))
	            depth = round(random_range(-6,9));
	    }
	}

	/// Generate snow drops
	if (snow) {
		
	    repeat (strength) {

		with (instance_create(random_range(__view_get( e__VW.XView, view_current )-global.gw, __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current )+global.gw), __view_get( e__VW.YView, view_current )-5, obj_snow))
		    depth = round(random_range(-6,9));
		}
	}
}

//Update smog position
pos -= 0.25;

