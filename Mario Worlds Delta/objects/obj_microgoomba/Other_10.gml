/// @description Flee away

//Create dead object.
dead = instance_create(x, y+8, obj_enemy_dead);

//Set the sprite
dead.sprite_index = spr_supergoomba_dead;

//Set the facing direction
dead.image_xscale = 1*sign(yfix);

//Set the horizontal speed
dead.hspeed = random_range(1, -1);

//Set the vertical speed
dead.vspeed = -3;
dead.gravity = 0.1;

//Destroy
instance_destroy();

