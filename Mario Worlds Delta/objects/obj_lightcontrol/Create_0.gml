/// @description SHS Lighting Controller

//Default variable
intensity = 128; //Light intensity; the lowest it is, the darker the room will be.

//Light surface global variable
global.surf_light = surface_create(room_width,room_height);

//Ambient light global variable
global.ambient_light = 0;

//If there's a lighting block in place, halve the ambient light
if (instance_exists(obj_lightblock)) {

    global.ambient_light = 8421504;
    alarm[0] = 8;
}

