/// @description Collision with the player

//If the player is climbing and is smacking the fence
if ((other.state == statetype.climb) && (other.netsmack > -1)) {

    //If the koopa is behind the fence
    if (depth == 11) {

        //Play 'Kick' sound
        audio_play_sound(snd_kick, 0, false);
        
        //Get 400 points
        with (instance_create(x+8, y, obj_score)) event_user(3);
        
        //Create spin thump
        with (instance_create(x+8, y, obj_smoke)) sprite_index = spr_spinthump;

        //Create dead enemy object
        imdead = instance_create(x, y, obj_enemy_dead);
        
        //Set up the sprite
        imdead.sprite_index = deathsprite;
        
        //Set up the xscale
        imdead.image_xscale = 1;
        
        //Set the vertical speed
        imdead.vspeed = -5;
        
        //Set the depth
        imdead.depth = depth;
        
        //Destroy
        instance_destroy();           
        
        //If the killer object is at the left of this object, move to the right
        if ((other.bbox_left+other.bbox_right/2) < bbox_left+bbox_right/2)
            imdead.hspeed = 0.5;
        else
            imdead.hspeed = -0.5;
    }
}

//Inherit event
event_inherited();

