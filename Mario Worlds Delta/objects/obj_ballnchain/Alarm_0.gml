/// @description Create chains and maze

for (var i=0; i<length; i++) {

    with (instance_create(x, y, obj_ballnchain_chain)) {
    
        mom = other.id;
        length = other.dist;
    }
    dist += 16;
}

//Increment length
dist += 8;

//Create maze
with (instance_create(x, y, obj_ballnchain_ball)) {

    mom = other.id;
    length = other.dist;
}

