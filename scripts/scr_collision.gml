// Horizontal Collision 

if (place_meeting(x+speed_x,y,par_solid_blocks)) {
    yplus = 0;
    while (place_meeting(x+speed_x,y-yplus,par_solid_blocks) && yplus <= abs(1*speed_x)) yplus += 1;
    if (place_meeting(x+speed_x,y-yplus,par_solid_blocks)) {
        while (!place_meeting(x+sign(speed_x),y,par_solid_blocks)) {
            x += sign(speed_x);
        }
        speed_x = 0;
    } else {
        y -= yplus;
    }
}
x += speed_x;

// Vertical Collision
if (place_meeting(x,y+speed_y,par_solid_blocks)) {
    while(!place_meeting(x,y+sign(speed_y),par_solid_blocks)) {
        y += sign(speed_y);
    }
    speed_y = 0;
}
y += speed_y;
