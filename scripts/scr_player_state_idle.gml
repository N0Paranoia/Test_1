/// scr_player_state_normal
// Player input
scr_get_input();

speed_hor_movement = 0;
speed_vert_movement = 0;

scr_physics();
scr_doors();

// Animate sprite
scr_animate_player_sprite();
