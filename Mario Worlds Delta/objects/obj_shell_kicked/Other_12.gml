/// @description Do event but ignore enemies outside the view

if (outside_view(sprite_get_width(sprite_index)))
exit;
    event_inherited();

