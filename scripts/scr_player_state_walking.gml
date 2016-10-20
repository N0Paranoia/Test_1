/// scr_player_state_normal
// Player input
scr_get_input();

speed_hor_movement = 0;
speed_vert_movement = 0;

// Player Movement
move_hor = key_left + key_right;
speed_x = ((move_hor * x_movement_speed) * scr_calculate_fps_adjustment());
move_vert = key_up + key_down;

// jumping
if (place_meeting(x,y+1,par_solid_blocks)) {;
    speed_y = key_jump * -speed_j;
}

scr_physics();
scr_collision();
scr_doors();

// Animate sprite
scr_animate_player_sprite();
