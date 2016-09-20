/// scr_player_state_normal
// Player input
scr_get_input();

speed_hor_movement = 0;
speed_vert_movement = 0;

// Player Movement
move_hor = key_left + key_right;
speed_x = move_hor * x_movement_speed;
move_vert = key_up + key_down;

// apply gravity
if (speed_y < 10) speed_y += grav;

// jumping
if (place_meeting(x,y+1,par_solid_blocks)) {
    speed_y = key_jump * -speed_j;
}

scr_collision(1, 1);
scr_doors();
