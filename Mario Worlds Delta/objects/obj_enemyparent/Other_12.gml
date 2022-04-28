/// @description Turn at enemies script

//Collision with regular enemies
var overlap = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom-4, obj_enemyparent, 0, 1);
if (overlap) 
&& (overlap.vulnerable < 99) {

    //Make sure the variable is defined
    if (enemyturn == true) {

        //Go right if the object is further to the right or in the same spot and a higher id.
        if ((bbox_left+bbox_right)*0.5 > (overlap.bbox_left+overlap.bbox_right)*0.5)
        || (((bbox_left+bbox_right)*0.5 = (overlap.bbox_left+overlap.bbox_right)*0.5) && (id > overlap.id))
            hspeed = abs(hspeed);
        
        //Otherwise, go left.
        else
            hspeed = -abs(hspeed);            
    }    
}

//Collision with holdable enemies
var overlap2 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom-4, obj_holdparent_enemy, 0, 1);
if (overlap2)
&& (overlap2.vulnerable < 99) {

    //Make sure the variable is defined
    if (enemyturn == true) {

        //Go right if the object is further to the right or in the same spot and a higher id.
        if ((bbox_left+bbox_right)*0.5 > (overlap2.bbox_left+overlap2.bbox_right)*0.5)
        || (((bbox_left+bbox_right)*0.5 = (overlap2.bbox_left+overlap2.bbox_right)*0.5) && (id > overlap2.id))
            hspeed = abs(hspeed);
        
        //Otherwise, go left.
        else
            hspeed = -abs(hspeed);                
    }    
}

