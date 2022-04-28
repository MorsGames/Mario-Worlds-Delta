/// @description Do not allow boo to taunt if it is moving

if (movenow == 1) {

    alarm[0] = 256;
    if (taunt > 0)
        taunt = 1;
}

