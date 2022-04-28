/// @description Perform event from obj_enemyparent

if (vspeed >= 0)
    event_perform_object(obj_enemyparent, ev_collision, obj_spinner);

