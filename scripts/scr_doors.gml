// Doors
if(place_meeting(x,y,obj_door)) {
    if(keyboard_check(ord('W')) && can_go_trough_doors == true) {
        if((x > obj_door.door_1_x - 16) && (x < obj_door.door_1_x + 16) && (y > obj_door.door_1_y - 16) && (y < obj_door.door_1_y + 16)) {
            x = obj_door.door_2_x;
            y = obj_door.door_2_y;
            can_go_trough_doors = false;
        }
        else if((x > obj_door.door_2_x - 16) && (x < obj_door.door_2_x + 16) && (y > obj_door.door_2_y - 16) && (y < obj_door.door_2_y + 16)) {
            x = obj_door.door_1_x;
            y = obj_door.door_1_y;
            can_go_trough_doors = false;
        }
    } else if(keyboard_check(ord('W') == false)) {
        can_go_trough_doors = true
    }
}
