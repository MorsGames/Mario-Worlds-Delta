/// @description Create a coin if 30 or more coins were collected in the same stage

if (obj_controller.coins < 30)
    instance_create(x+8, ystart-16, obj_blockcoin);

