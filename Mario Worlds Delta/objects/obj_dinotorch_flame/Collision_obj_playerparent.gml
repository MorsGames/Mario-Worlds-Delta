/// @description Hurt the player

//If the player is invincible
if (instance_exists(obj_invincibility)) 
    exit;

//Otherwise, hurt him.
else
    with (other) event_user(0);

