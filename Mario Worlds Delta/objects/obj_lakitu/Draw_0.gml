/// @description Draw the Lakitu

//Cloud
draw_sprite_ext(spr_lakitu_cloud, cloud_index, round(x), round(y) + 4, 1, 1, 0, c_white, 1);

//Lakitu
draw_sprite_ext(sprite_index, image_index, round(x), round(y), xscale, 1, 0, c_white, 1);

//Fishin' Boo Fishin' Rod
if (type == 1)
    draw_sprite_ext(spr_fishinboo_rod, 0, round(x)-baitx, round(y), xscale, 1, 0, c_white, 1);

//Cloud front
draw_sprite_ext(spr_lakitu_cloud_front, type, round(x), round(y) + 10, 1, 1, 0, c_white, 1);

//Rod
if (fishing == true) {
    
    //Draw lakitu reel
    draw_sprite_ext(spr_lakitu_reel, type, round(x)-baitx, round(y)-baity, 1, 1, 0, c_white, 1);
    
    //Draw bait to avoid lag
    if instance_exists(bait)
        draw_sprite(bait.sprite_index,bait.image_index,x-baitx,y+baitlength);        
}

