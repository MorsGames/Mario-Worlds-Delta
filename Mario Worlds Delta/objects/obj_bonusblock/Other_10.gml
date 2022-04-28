/// @description Set frame

image_speed = 0;
if ((image_index >= 0) && (image_index <= 3.99))
    image_index = 2;
else if ((image_index >= 4) && (image_index <= 7.99))
    image_index = 6;
else
    image_index = 10;

