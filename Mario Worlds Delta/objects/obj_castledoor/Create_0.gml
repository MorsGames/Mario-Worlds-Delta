/// @description Castle entrance

//Castle type
doortype = 0;

//Opening variables
open = false;
nextroom = 0;

//Castle door position (also used as a timer)
d_y = 0;

//Ghost house door frame
f = 0;
thud = false;

//Black behind castle door
instance_create(x,y,obj_castledoor_black);

