/// @description Passin' chuck logic

//If the chuck hp is full
if (hp == 3) {

    //Default floor collision
    event_user(4);
    
    //Update facing direction but only when not about to kick a football
    if (ready == 0)
        event_user(8);
}
else
    event_inherited();

