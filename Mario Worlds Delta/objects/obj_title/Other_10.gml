/// @description  Update file info

for (var i = 1; i <= 3; i ++) {

    fileinfo[i] = -1;
        
    if (file_exists("MWDInfo"+string(i)+".ini")) {
    
        ini_open("MWDInfo"+string(i)+".ini");
        fileinfo[i] = ini_read_real("Exits", "Completion", 0);
        ini_close();
    
    }
    
}

