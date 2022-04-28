/// @description Destroy

//Make Mario vulnerable to all attacks.
if (instance_exists(obj_playerparent)) {

    obj_playerparent.invulnerable = false;
}

//Destroy
instance_destroy();

