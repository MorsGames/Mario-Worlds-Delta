/// @description Increment scale and decrement alpha

//Increment scale
scale += 0.05;

//Decrement alpha
alpha -= 0.0324;

//Destroy when alpha hits 0.05
if (alpha < 0.0324)
    instance_destroy();

