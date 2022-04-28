/// @description Title Screen

//Display "Press Start"
display = 0;
alarm[0] = 2;

//Loop 'Title' theme
alarm[1] = 2;

//Confirmed to go to the world map
confirmed_selection = false;

//Create the spotlight
spotlight = surface_create(room_width,room_height);

//The spotlight's starting position (negative doesn't draw so it acts as a timer)
scale = -25;

//Menu mode
//1: Activating...
//2: Active
//3: Key
mode = 1;

//Page
page = 0;

//Current selection on page
current = 0;

enum menupage {

    main = 0,
    fileselect = 1,
    options1 = 2,
    keys1 = 3,
    keys2 = 4,
    filedelete = 5,
    options2 = 6

}

//Menu 1 - Main Menu
menu[menupage.main,0] = "START GAME";
menu[menupage.main,1] = "OPTIONS";
menu[menupage.main,2] = "EXIT";

//Menu 2 - File Select
menu[menupage.fileselect,0] = "FILE A";
menu[menupage.fileselect,1] = "FILE B";
menu[menupage.fileselect,2] = "FILE C";
menu[menupage.fileselect,3] = "ERASE DATA";
menu[menupage.fileselect,4] = "BACK";

//Menu 2 - File Delete
menu[menupage.filedelete,0] = "ERASE FILE A";
menu[menupage.filedelete,1] = "ERASE FILE B";
menu[menupage.filedelete,2] = "ERASE FILE C";
menu[menupage.filedelete,3] = "BACK";

//Menu 3 - Options 1 / 2
menu[menupage.options1,0] = "KEYBOARD CONFIG";
menu[menupage.options1,1] = "SET WINDOW SIZE";
menu[menupage.options1,2] = "AUTO-SAVE: ON";
menu[menupage.options1,3] = "HUD TYPE: DEFAULT";
menu[menupage.options1,4] = "NEXT PAGE";
menu[menupage.options1,5] = "BACK";

//Menu 4 - Options 2 / 2
menu[menupage.options2,0] = "V-SYNC: ON";
menu[menupage.options2,1] = "FPS: ON";
menu[menupage.options2,2] = "VIEW CREDITS";
menu[menupage.options2,3] = "PREVIOUS PAGE";
menu[menupage.options2,4] = "BACK";

//Menu 5: Keys 1 / 2
menu[menupage.keys1,0] = "RUN/SHOOT: " + string(key_to_string(global.key[input.action1]));
menu[menupage.keys1,1] = "JUMP: " + string(key_to_string(global.key[input.action0]));
menu[menupage.keys1,2] = "SPIN: " + string(key_to_string(global.key[input.action2]));
menu[menupage.keys1,3] = "RESERVE   : " + string(key_to_string(global.key[input.select]));
menu[menupage.keys1,4] = "PAUSE     : " + string(key_to_string(global.key[input.start]));
menu[menupage.keys1,5] = "RESET KEYS TO DEFAULT"
menu[menupage.keys1,6] = "NEXT PAGE"
menu[menupage.keys1,7] = "BACK"

//Menu 6: Keys 2 / 2
menu[menupage.keys2,0] = "Up        : " + string(key_to_string(global.key[input.up]));
menu[menupage.keys2,1] = "Down      : " + string(key_to_string(global.key[input.down]));
menu[menupage.keys2,2] = "Left      : " + string(key_to_string(global.key[input.left]));
menu[menupage.keys2,3] = "Right     : " + string(key_to_string(global.key[input.right]));
menu[menupage.keys2,4] = "RESET KEYS TO DEFAULT"
menu[menupage.keys2,5] = "PREVIOUS PAGE";
menu[menupage.keys2,6] = "BACK";

//File info
event_user(0);

