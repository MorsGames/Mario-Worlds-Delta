/// @description Handle screen shaking

//If the screen is shaking
if (shake == true) {

    //Increment shake_anim variable
    shake_anim++;
    alarm[9] = 2;
    
    //Set the position of the view
    if (shake_anim % 2)
        yport = ((choose(2,4))/* * (window_get_height() / view_hview)*/);
    else
        yport = ((-choose(2,4))/* * (window_get_height() / view_hview)*/);
}
else
    shake_anim = 0;

/* */
/*  */
