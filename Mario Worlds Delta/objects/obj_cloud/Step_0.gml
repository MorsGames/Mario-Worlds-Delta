/// @description Shrink until it's destroyed

scale -= 0.025;
if (scale < 0.025)
    instance_destroy();

