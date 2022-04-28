/// @description Get points out of the tape and clear the level

//Play 'Goal' sound
audio_stop_play_sound(snd_goalgate, 0, false);

//Play 'Explosion' sound
audio_stop_play_sound(snd_explosion, 0, false);

//3-UP + 50 bonus stars
if (y < ystart-118) {

    //Add 50 bonus stars
    global.bonusadd = 50;
    
    //Get 3 extra lives
    myscore = instance_create(x+8, y, obj_score);
    with (myscore) 
        event_user(11);
}

//40 Bonus stars
else if (y < ystart-112)
    global.bonusadd = 40;

//1 - 30 Bonus stars
else if (y >= ystart-112)
    global.bonusadd = round((ystart - y) / 112 * 29 + 1);

//Turn the player onto the goal object
with (other) {

    with (instance_create(x, y, obj_player_clear)) {
    
        vspeed = other.vspeed;
    }
    instance_destroy();
}

//Reveal how many stars were obtained
instance_create(0, 0, obj_score_goal);

//Destroy
instance_destroy();

