/// @description Boundary logic

//Destroy if the player does not exist
if (!instance_exists(obj_playerparent)) {

    instance_destroy();
    exit;
}

//Stay relative to the player
x = obj_playerparent.x;
y = obj_playerparent.bbox_bottom+1;

