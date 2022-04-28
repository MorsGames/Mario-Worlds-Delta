/// @description Remember colour and carried item if mounted

if (state == yoshistate.ridden) {

    //Remember Yoshi colour
    global.mountcolour = colour;
    
    //Carried item
    global.carrieditem = mouthholder;
    global.carriedsprite = mouthsprite;
}

