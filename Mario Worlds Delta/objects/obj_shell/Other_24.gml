/// @description Check sprite and set vulnerabilities

//Red Koopa
if (sprite_index == spr_shell_red)
    deathsprite = spr_koopa_red_dead;
    
//Blue Koopa
else if (sprite_index == spr_shell_blue)
    deathsprite = spr_koopa_blue_dead;
    
//Yellow Koopa
else if (sprite_index == spr_shell_yellow)
    deathsprite = spr_koopa_yellow_dead;
    
//Gargantua Green Koopa
else if (sprite_index == spr_shell_big) {

    deathsprite = spr_bigkoopa_dead;
    edible = 2;
}

//Gargantua Red Koopa
else if (sprite_index == spr_shell_big_red) {

    deathsprite = spr_bigkoopa_red_dead;
    edible = 2;
}

//Classic Green Koopa
else if (sprite_index == spr_shell_classic)
    deathsprite = spr_classickoopa_dead;

//Classic Red Koopa
else if (sprite_index == spr_shell_classic_red)
    deathsprite = spr_classickoopa_red_dead;

//Buzzy Beetle
else if (sprite_index == spr_shell_buzzy) {

    deathsprite = spr_buzzybeetle_dead;
    vulnerable = 1;
    edible = 0;
}

//Spiny
else if (sprite_index == spr_shell_spiny) {

    deathsprite = spr_spiny_dead;
    edible = 0;
}

