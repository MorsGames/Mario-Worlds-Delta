/// @description Create the new enemy depending of the sprite set

switch (sprite_index) {

    //Porchu-Puffer
    case (spr_porchupuffer): {
    
        with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + 32, y, obj_porchupuffer))
            charge = 1;
    } break;
    
    //Lakitu
    case (spr_lakitu): {
    
        with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + 64, y, obj_lakitu)) {
        
            activated = 1;
            canthrow = 1;
        }
    } break;
    
    //Green Lakitu
    case (spr_lakitu_green): {
    
        with (instance_create(__view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) + 64, y, obj_lakitugreen)) {
        
            activated = 1;
            canthrow = 1;
        }
    } break;
    
    //Magikoopa
    case (spr_magikoopa): {
    
        with (instance_create(-1000, -1000, obj_magikoopa)) {
        
            xmin = other.xmin;
            xmax = other.xmax;
        }
    } break;
}

//Destroy
instance_destroy();

