/// @description Move up if inside the view

image_speed = 0.325;
if (y < __view_get( e__VW.YView, 0 ) + global.gh) {

    vspeed = -7;
    gravity = 0.35;
}

