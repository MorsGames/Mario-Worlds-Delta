/// @description Decide up which room to warp to

//Set up which value will be used
switch (mode) {

    //Coins
    case (0): 
        check = coins; 
        break;
    
    //Time
    case (1): 
        check = global.time; 
        break;
    
    //A-Coins
    case (2): 
        check = ds_map_size(global.dcoins); 
        break;
}

//Range A-B
if (check < target_b) && (check < target_c) {

    //Obtain destination
    destination_real = destination[0];
    
    //Obtain exit direction
    exit_dir_real = exit_dir[0];
    
    //Obtain exit id
    exit_id_real = exit_id[0];
}

//Range B-C
else if (check < target_c) {

    //Obtain destination
    destination_real = destination[1];
    
    //Obtain exit direction
    exit_dir_real = exit_dir[1];
    
    //Obtain exit id
    exit_id_real = exit_id[1];
}

//Range C+
else {

    //Obtain destination
    destination_real = destination[2];
    
    //Obtain exit direction
    exit_dir_real = exit_dir[2];
    
    //Obtain exit id
    exit_id_real = exit_id[2];
}

