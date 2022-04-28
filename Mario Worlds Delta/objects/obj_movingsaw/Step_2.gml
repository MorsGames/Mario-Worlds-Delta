/// @description Make the blade move within the engine

if (myblade != noone) {
    
    //Keep the rope in position
    myblade.x = self.x;
    if (down == 0)
        myblade.y = self.y-28;
    else
        myblade.y = self.y+14;
}

