/// @description Stop moving raft parts

//Stop horizontal speed
hspeed = 0;

//Snap them
if (myleft != noone) {

    myleft.x = x+1;
    with (myleft) event_user(1);
}

