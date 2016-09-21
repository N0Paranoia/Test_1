caster_init_polygon();

switch(object_index) {
    case obj_slope_left:
        caster_add_point(-sprite_xoffset,-sprite_yoffset);
        caster_add_point(-sprite_xoffset,-sprite_yoffset + sprite_height);
        caster_add_point(-sprite_xoffset + sprite_width,-sprite_yoffset + sprite_height);
        break;
    case obj_slope_right:
        caster_add_point(-sprite_xoffset,-sprite_yoffset + sprite_height);
        caster_add_point(-sprite_xoffset + sprite_width, -sprite_yoffset + sprite_height);
        caster_add_point(-sprite_xoffset + sprite_width,-sprite_yoffset);
        break;
}
