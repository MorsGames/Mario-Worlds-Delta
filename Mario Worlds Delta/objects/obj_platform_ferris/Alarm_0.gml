/// @description Create the platforms

//Create a fixed amount of platforms and chains
for (i=0; i<amount; i++) {

    //Platforms
    platform[i] = instance_create(x, y+8, obj_platform_ferris_platform);
    platform[i].sprite_index = platspr;
    platform[i].platform = platform[i];
    
    //Chain
    chain[i] = instance_create(x, y+8, obj_platform_ferris_chain);
    chain[i].dist = distance;
}

//Start moving.
active = true;

