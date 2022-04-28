/// @description Disco Ball logic

//Stay in position
x = __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2;
y = __view_get( e__VW.YView, 0 ) + 48;

//Set the light angle
xx += 0.75*sign(ready);
if (xx < -84)
    ready = 1;
else if (xx > 83)
    ready = -1;

