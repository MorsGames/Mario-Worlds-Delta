/// @description Hurt parent wiggler

//If the object is not outside the view
if (outside_view(16) == false) {
    
    //Activate the parent...
    instance_activate_object(parent);
    
    //...and then kill it
    with (parent) event_user(0);
}

