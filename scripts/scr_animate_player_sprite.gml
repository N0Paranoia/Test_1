var start_frame_idle_left = 8;
var end_frame_idle_left = 8;
var start_frame_idle_right = 9;
var end_frame_idle_right = 9;
var start_frame_walking_left = 0;
var end_frame_walking_left = 7;
var start_frame_walking_right = 10;
var end_frame_walking_right = 17;
var start_frame_attacking_left = 37;
var start_frame_attacking_right = 38;

sprite_index = spr_player;

switch (state) {
    case states.idle:
        if(facing_left) {
            if(((image_index > end_frame_idle_left)||(image_index < start_frame_idle_left))) {
                image_index = start_frame_idle_left;   
            }
        }
        else if(facing_right) {
            if(((image_index > end_frame_idle_right)||(image_index < start_frame_idle_right))) {
                image_index = start_frame_idle_right;
            }
        }
        break;
    case states.walking:
        if(key_right !=0) {
            facing_left = false;
            facing_right = true;
            if(((image_index < start_frame_walking_right +1)||(image_index > end_frame_walking_right))) {
                obj_player.frame = 0;
                image_index = start_frame_walking_right;
            } else {
                image_index = start_frame_walking_right + obj_player.frame;
                if(obj_player.frame_counter > obj_player.frame_switch) {
                    obj_player.frame_counter = 0;
                    obj_player.frame ++;
                }
            }
            obj_player.frame_counter += obj_player.frame_speed;
        }
        if(key_left !=0) {
            facing_right = false;
            facing_left = true;
            if(((image_index < start_frame_walking_left +1)||(image_index > end_frame_walking_left))) {
                obj_player.frame = 0;
                image_index = start_frame_walking_left;
            } else {
                image_index = start_frame_walking_left + obj_player.frame;
                if(obj_player.frame_counter > obj_player.frame_switch) {
                    obj_player.frame_counter = 0;
                    obj_player.frame ++;
                }
            }
            obj_player.frame_counter += obj_player.frame_speed;
        }
        break;
    case states.attacking:
        if(facing_left) {
            image_index = start_frame_attacking_left;       
        } else if(facing_right) {
            image_index = start_frame_attacking_right;
        }
        break;
}
