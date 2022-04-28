/// @description Make the player bounce if it is above

if (vspeed < 0)
&& (other.bbox_bottom < yprevious+5) {

    other.vspeed = -3;
    other.y--;
}

