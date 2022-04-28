/// @description Ring logic

image_xscale += 0.02;
if (image_xscale > 0.5) {

    image_alpha -= 0.05;
    if (image_alpha < 0.05)
        instance_destroy();
}

//Set the y scale
image_yscale = image_xscale;

//Set the hue
hue += 5;
if (hue > 255)
    hue -= 255;

