/// @description Guess Minigame Block Manager

//Spawn the blocks
for (var i=0; i<3; i++) {

    //Create a block
    var b = instance_create(xstart, ystart, obj_guessblock);
    
    //Assign the block to a id
    myblock[i] = b;
        b.numb = i+1;
        b.parent = id;
}

//Count if the blocks were hit correctly
count = 0;

