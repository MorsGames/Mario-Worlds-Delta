/// @description Make the boo stream

if (!isparent) exit;

if (streamsize > 0) {

    with (instance_create(x, y, obj_boostream)) {
    
        parent = other;
        type = irandom_range(0,2);
        isparent = false;
        depth = other.depth + 1;
        image_xscale = other.image_xscale;
        streamsize = other.streamsize;        
    }    
    alarm[0] = boodistance;
}

with (obj_boostream) {

    if (!isparent) {
    
        if (parent = other.id) {
        
            age ++;
            if (age > streamsize) 
                instance_destroy()            
        }        
    }    
}

