/// @description Brick goomba dead script

//Play 'Break' sound
audio_play_sound(snd_break, 0, false);

//Inherit event
event_inherited();

//Do not move
imdead.hspeed = 0;

//Create shards
with (instance_create(x, y+8, obj_shard))
    motion_set(45, 6);
with (instance_create(x, y+8, obj_shard))
    motion_set(60, 6);
with (instance_create(x, y+8, obj_shard))
    motion_set(120, 6);
with (instance_create(x, y+8, obj_shard))
    motion_set(135, 6);

