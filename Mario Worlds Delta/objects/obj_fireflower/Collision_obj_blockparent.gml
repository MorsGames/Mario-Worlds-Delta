/// @description Bump with block

//If the block is moving up
if (other.vspeed < 0)
&& (vspeed >= 0)
&& (y < other.bbox_top-11)
    vspeed = -5;

