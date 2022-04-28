/// @description Manage offset values

//If there's memory of a goomba below
if (instance_exists(mebelow)) {

    offsetxscale = -mebelow.offsetxscale
}

switch (offsetnext) {

    case (0): offset = offsetxscale; break;
    case (1): offset = offsetxscale+1; break;
    case (2): offset = offsetxscale; break;
    case (3): offset = 0; break;
    case (4): offset = -offsetxscale; break;
    case (5): offset = -offsetxscale+1; break;
    case (6): offset = -offsetxscale; break;
    case (7): offset = 0; break;

    /*
    case (0): {
        offset = offsetxscale;
    } break;
    case (1): {
        offset = 0;
    } break;
    case (2): {
        offset = -offsetxscale;
    } break;
    case (3): {
        offset = 0;
    } break;
    */
}

//Increment next offset
offsetnext++;
if (offsetnext == 8)
    offsetnext = 0;

//Keep changing offset values
alarm[1] = 5;

/* */
/*  */
