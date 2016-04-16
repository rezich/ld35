if (!phy_active) {
    phy_position_x = parent_id.phy_position_x - lengthdir_x(distance, -parent_id.phy_rotation + -angle); // cos(angle) * distance
    phy_position_y = parent_id.phy_position_y - lengthdir_y(distance, -parent_id.phy_rotation + -angle);
    phy_rotation = parent_id.phy_rotation + angle_freeze;
}

x = phy_position_x;
y = phy_position_y;


// to add parts on top of parts
if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_parts, false, true) > 0) {
    other_part = (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_parts, false, true));
    with (other_part) {
        if (other.phy_active == true) {
            other.phy_active = false;
            other.parent_id = id;
            other.distance = point_distance(phy_position_x, phy_position_y, other.phy_position_x, other.phy_position_y);
            other.angle = -phy_rotation + radtodeg(arctan2(phy_position_y - other.phy_position_y, phy_position_x - other.phy_position_x));
            other.angle_freeze = other.phy_rotation;
            // add this child to my list
            ds_list_add(children, other.id);
        }
    }
}


for (i = 0; i < ds_list_size(children); i++) {
    var current_child = ds_list_find_value(children, i);
    with current_child {
        update_parts();
    }
}


if (keyboard_check_pressed(vk_space)) && (ds_list_size(children) == 0) && (phy_active == false) {
    var bullet = instance_create(phy_position_x, phy_position_y, obj_bullet);
    bullet.phy_rotation = phy_rotation;
}
