/// @description Update player animation

if (obj_controller.fade == 1) || (obj_controller.mode == 0)

    anim += 0.15;
    
if (fade_save < 1) {

    if (fade_save == 0.99) {
    
        fade_save = 1;
        
    }
    
    fade_save -= 0.025;
    
    if (fade_save <= 0) {
    
        show_saved = false;
        fade_save = 1;
        
    }
    
}

