var starting_frame;
var start_frame_idle_left = 8;
var end_frame_idle_left = 8;
var start_frame_idle_right = 9;
var end_frame_idle_right = 9;
var start_frame_walking_left = 0;
var end_frame_walking_left = 7;
var start_frame_walking_right = 10;
var end_frame_walking_right = 17;

var frame_counter = 0;
var frame_speed = 12;
var frame_switch = 600;

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
            if(((image_index < start_frame_walking_right +1)||(image_index > end_frame_walking_right -1))) {
                image_index = start_frame_walking_right;
            } else {
                image_index ++;
            }
        }
        else if(key_left !=0) {
            facing_right = false;
            facing_left = true;
            if(((image_index < start_frame_walking_left +1 )||(image_index > end_frame_walking_left -1))) {
                image_index = start_frame_walking_left;
            } else {
                image_index ++;
            }   
        }
        break;
}
