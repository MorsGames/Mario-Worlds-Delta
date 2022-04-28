/// @description Prepare a hammer to throw

//If there's hammers to throw
if (hammers > 0) {
    
    //Set the throwing pose
    _throw = true;
    
    //Decrement hammers
    hammers--;
    
    //Throw a hammer
    alarm[4] = 15;
}

//Otherwise, get new hammers and hold up for 1 / 2 seconds
else {

    //Increment hammers
    hammers = 1+random(round(3));

    //Throw again
    alarm[3] = 60+random(round(60));
}

