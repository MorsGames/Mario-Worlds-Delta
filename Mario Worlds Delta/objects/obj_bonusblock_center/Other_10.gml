/// @description MATCH 0 (Center "|")
/// @param Center "|"

var _a, _aa, _b, _bb;

//Set _a
_a = 0;

//Check for other blocks
if (collision_line(x+8, y+8, x+8, y-40, obj_bonusblock, 1, 0)) {

    _aa = collision_line(x+8, y+8, x+8, y-40, obj_bonusblock, 1, 0);
    if (round(_aa.image_index) == round(self.image_index))
        _a = 1;
}

//Set _b
_b = 0;

//Check for other blocks
if (collision_rectangle(x+8, y+8, x+8, y+40, obj_bonusblock, 1, 0)) {

    _bb = collision_line(x+8, y+8, x+8, y+40, obj_bonusblock, 1, 0);
    if (round(_bb.image_index) == round(self.image_index))
        _b = 1;
}

//Complete match
if (_a + _b == 2)
    match[0] = 1;

///MATCH 1 (Center "-") 

var _a, _aa, _b, _bb;

//Set _a
_a = 0;

//Check for other blocks
if (collision_line(x+8, y+8, x-40, y+8, obj_bonusblock, 1, 0)) {

    _aa = collision_line(x+8, y+8, x-40, y+8, obj_bonusblock, 1, 0);
    if (round(_aa.image_index) == round(self.image_index))
        _a = 1;
}

//Set _b
_b = 0;

//Check for other blocks
if (collision_rectangle(x+8, y+8, x+40, y+8, obj_bonusblock, 1, 0)) {

    _bb = collision_line(x+8, y+8, x+40, y+8, obj_bonusblock, 1, 0);
    if (round(_bb.image_index) == round(self.image_index))
        _b = 1;
}

//Complete match
if (_a + _b == 2)
    match[1] = 1;

///MATCH 2 ( / )

var _a, _aa, _b, _bb;

//Set _a
_a = 0;

//Check for other blocks
if (collision_line(x+8, y+8, x+40, y-40, obj_bonusblock, 1, 0)) {

    _aa = collision_line(x+8, y+8, x+40, y-40, obj_bonusblock, 1, 0);
    if (round(_aa.image_index) == round(self.image_index))
        _a = 1;
}

//Set _b
_b = 0;

//Check for other blocks
if (collision_rectangle(x+8, y+8, x-40, y+40, obj_bonusblock, 1, 0)) {

    _bb = collision_line(x+8, y+8, x-40, y+40, obj_bonusblock, 1, 0);
    if (round(_bb.image_index) == round(self.image_index))
        _b = 1;
}

//Complete match
if (_a + _b == 2)
    match[2] = 1;

///MATCH 3 ( \ )

var _a, _aa, _b, _bb;

//Set _a
_a = 0;

//Check for other blocks
if (collision_line(x+8, y+8, x-40, y-40, obj_bonusblock, 1, 0)) {

    _aa = collision_line(x+8, y+8, x-40, y-40, obj_bonusblock, 1, 0);
    if (round(_aa.image_index) == round(self.image_index))
        _a = 1;
}

//Set _b
_b = 0;

//Check for other blocks
if (collision_rectangle(x+8, y+8, x+40, y+40, obj_bonusblock, 1, 0)) {

    _bb = collision_line(x+8, y+8, x+40, y+40, obj_bonusblock, 1, 0);
    if (round(_bb.image_index) == round(self.image_index))
        _b = 1;
}

//Complete match
if (_a + _b == 2)
    match[3] = 1;

///MATCH 4 (Top "-")

var _a, _aa, _b, _bb, _c, _cc;

//Set _a
_a = 0;

//Check for the block
if (collision_point(x-40, y-40, obj_bonusblock, 1, 0)) {

    _aa = collision_point(x-40, y-40, obj_bonusblock, 1, 0);
    _a = round(_aa.image_index);
}

//Set _b
_b = 0;

//Check for the block
if (collision_point(x+48, y-40, obj_bonusblock, 1, 0)) {

    _bb = collision_point(x+48, y-40, obj_bonusblock, 1, 0);
    _b = round(_bb.image_index);
}

//Set _c
_c = 0;

//Check for the block
if (collision_point(x+8, y-40, obj_bonusblock, 1, 0)) {

    _cc = collision_point(x+8, y-40, obj_bonusblock, 1, 0);
    _c = round(_cc.image_index);
}

//Complete match
if ((_a == _b) && (_b == _c))
    match[4] = 1;

///MATCH 5 (Bottom "-")

var _a, _aa, _b, _bb, _c, _cc;

//Set _a
_a = 0;

//Check for the block
if (collision_point(x-40, y+48, obj_bonusblock, 1, 0)) {

    _aa = collision_point(x-40, y+48, obj_bonusblock, 1, 0);
    _a = round(_aa.image_index);
}

//Set _b
_b = 0;

//Check for the block
if (collision_point(x+48, y+48, obj_bonusblock, 1, 0)) {

    _bb = collision_point(x+48, y+48, obj_bonusblock, 1, 0);
    _b = round(_bb.image_index);
}

//Set _c
_c = 0;

//Check for the block
if (collision_point(x+8, y+48, obj_bonusblock, 1, 0)) {

    _cc = collision_point(x+8, y+48, obj_bonusblock, 1, 0);
    _c = round(_cc.image_index);
}

//Complete match
if ((_a == _b) && (_b == _c))
    match[5] = 1;

///MATCH 6 (Left "|")

var _a, _aa, _b, _bb, _c, _cc;

//Set _a
_a = 0;

//Check for the block
if (collision_point(x-40, y-40, obj_bonusblock, 1, 0)) {

    _aa = collision_point(x-40, y-40, obj_bonusblock, 1, 0);
    _a = round(_aa.image_index);
}

//Set _b
_b = 0;

//Check for the block
if (collision_point(x-40, y+48, obj_bonusblock, 1, 0)) {

    _bb = collision_point(x-40, y+48, obj_bonusblock, 1, 0);
    _b = round(_bb.image_index);
}

//Set _c
_c = 0;

//Check for the block
if (collision_point(x-40, y+8, obj_bonusblock, 1, 0)) {

    _cc = collision_point(x-40, y+8, obj_bonusblock, 1, 0);
    _c = round(_cc.image_index);
}

//Complete match
if ((_a == _b) && (_b == _c))
    match[6] = 1;

///MATCH 7 (Right "|")

var _a, _aa, _b, _bb, _c, _cc;

//Set _a
_a = 0;

//Check for the block
if (collision_point(x+48, y-40, obj_bonusblock, 1, 0)) {

    _aa = collision_point(x+48, y-40, obj_bonusblock, 1, 0);
    _a = round(_aa.image_index);
}

//Set _b
_b = 0;

//Check for the block
if (collision_point(x+48, y+48, obj_bonusblock, 1, 0)) {

    _bb = collision_point(x+48, y+48, obj_bonusblock, 1, 0);
    _b = round(_bb.image_index);
}

//Set _c
_c = 0;

//Check for the block
if (collision_point(x+48, y+8, obj_bonusblock, 1, 0)) {

    _cc = collision_point(x+48, y+8, obj_bonusblock, 1, 0);
    _c = round(_cc.image_index);
}

//Complete match
if ((_a == _b) && (_b == _c))
    match[7] = 1;

///Count the bonuses

var i;
for (i=0; i<8; i++) {

    total += match[i];
}
rewards = total;
if (total > 0)
    audio_stop_play_sound(snd_correct, 0, false);
else
    audio_stop_play_sound(snd_wrong, 0, false);

