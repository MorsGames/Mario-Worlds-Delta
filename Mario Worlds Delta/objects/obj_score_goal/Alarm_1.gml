/// @description Replace the colour

alarm[1] = 4;
switch (colour) {

    //White -> Red
    case (c_white): colour = c_smwred; break;

    //Red -> Green
    case (c_smwred): colour = c_smwgreen; break;
    
    //Green -> Yellow
    case (c_smwgreen): colour = c_smwyellow; break;
    
    //Yellow -> Blue
    case (c_smwyellow): colour = c_smwblue; break;

    //Blue -> Red
    case (c_smwblue): colour = c_smwred; break;
}

