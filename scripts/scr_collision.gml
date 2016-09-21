// Horizontal Collision 
if (place_meeting(x+speed_x,y,par_solid_blocks)) {
    yplus = 0;
    // For the sloped tiles
    while (place_meeting(x+speed_x,y-yplus,par_solid_blocks) && yplus <= abs(1*speed_x)) {
        yplus += 1;
    }
    // This is the default collision
    if (place_meeting(x+speed_x,y-yplus,par_solid_blocks)) {
        /* while (!place_meeting(x+sign(speed_x),y,par_solid_blocks)) {
            x += sign(speed_x);
        } */
        speed_x = 0;
    } else {
        y -= yplus;
    }
}
x += speed_x;
// Let the player stick to walls on the down slopes
if !place_meeting(x,y,par_solid_blocks) && speed_y >= 0 && place_meeting(x,y+2+abs(speed_x),par_solid_blocks) {
    while(!place_meeting(x,y+1,par_solid_blocks)) {
        y += 1;
    }
}

// Vertical Collision
if (place_meeting(x,y+speed_y,par_solid_blocks)) {
    while(!place_meeting(x,y+sign(speed_y),par_solid_blocks)) {
        y += sign(speed_y);
    }
    speed_y = 0;
}
y += speed_y;
