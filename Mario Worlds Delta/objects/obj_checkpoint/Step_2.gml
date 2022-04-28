/// @description Manage animation

//Update right pole animation
if (pole != noone) {

    pole.anim = self.anim;
}

//Update animation
anim += 0.15;
if (anim > anim_st+4)
    anim = anim_st;

