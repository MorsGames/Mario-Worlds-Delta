/// @description Green Super Koopa Logic

//Inherit the "parent" event
event_perform_object(obj_superkoopa_red,ev_step,ev_step_normal);

//Destroy if far enough outside of view
if (outside_view(48))

    instance_destroy();

