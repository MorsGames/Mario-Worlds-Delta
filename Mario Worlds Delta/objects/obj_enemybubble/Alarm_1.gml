/// @description Pop and release the enemy

//Play 'Pop' sound
audio_play_sound(snd_pop, 0, false);

//Create a enemy based on the enemy's sprite
switch (sprout) {

    //Goomba
    case (spr_galoomba): {
            
        with (instance_create(x+8+(sprite_get_xoffset(sprout)), y+10, obj_galoomba)) {
        
            xscale = 1*sign(other.hspeed);
            hspeed = 0;
            alarm[10] = -1;
        }
    } break;
        
    //Goomba
    case (spr_bobomb_cannon): {
            
        with (instance_create(x+8+(sprite_get_xoffset(sprout)), y+10, obj_bobomb_cannon)) {
        
            xscale = 1*sign(other.hspeed);
            hspeed = 0;
            alarm[10] = -1;
        }
    } break;
        
    //Cheep-Cheep
    case (spr_cheepcheep):
        instance_create(x+8+(sprite_get_xoffset(sprout)), y+10, obj_cheepcheep); break;
        
    //Mushroom
    case (spr_mushroom):
        instance_create(x+8+(sprite_get_xoffset(sprout)), y+10, obj_mushroom); break;
}

//Create 'Pop' effect
with (instance_create(x+16, y+16, obj_smoke)) sprite_index = spr_pop;

//Destroy
instance_destroy();

