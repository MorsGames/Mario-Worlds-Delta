/// @description Crumble it

//Play 'Crumble' sound
audio_play_sound(snd_crumble, 0, false);

//Get points based on combo
if (obj_playerparent.hitcombo <= 6) //If the player did 6 or less consecutive stomps
    with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(2+obj_playerparent.hitcombo);
else {
        
    //If the combo is odd
    if (obj_playerparent.hitcombo % 2 == 1)
        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(9);
    
    //Otherwise, if the combo is even
    else if (obj_playerparent.hitcombo % 2 == 0)
        with (instance_create((bbox_left+bbox_right)/2-8,y,obj_score)) event_user(10);        
}
    
//Increment combo
obj_playerparent.hitcombo++;

//Turn into a pile of bones
with (instance_create(x,y,obj_crumblebones)) {

    sprite_index = spr_drybones_crumble;
    deathsprite = spr_drybones;
    xscale = other.xscale;
    type = 1;
    
}

//Destroy
instance_destroy();

