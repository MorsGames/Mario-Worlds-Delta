/// @description Perform action based on state

//If yoshi is idle or running away, allow ride
if (state != yoshistate.ridden)
    rideme = 1;
    
//Otherwise, if yoshi is being ridden
else if (state == yoshistate.ridden) {

    anim = 1;
    instance_create(x, y, obj_tongue);
}

