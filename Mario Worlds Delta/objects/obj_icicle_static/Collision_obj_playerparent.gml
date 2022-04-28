/// @description Hurt the player

//If the player is below it, hurt him
if (other.bbox_bottom > yprevious+5)
    with (other) event_user(0);

