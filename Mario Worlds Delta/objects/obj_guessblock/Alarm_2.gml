/// @description Turn into a correct empty block

//Stop vertical movement
vspeed = 0;
y = ystart;

//Create a 1-UP if the parent counter is set to 3
if (parent.count == 3) {

    //Create the 1-UP
    with (instance_create(x+8, y, obj_powerup_sprout)) 
        sprite_index = enum_get_sprite(itemtype.lifeup);
}
    
//Change into a empty block
with (instance_create(x, y, obj_emptyblock)) 
    sprite_index = spr_guessblock;

