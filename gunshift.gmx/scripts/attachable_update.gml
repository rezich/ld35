// NOTE: ONLY CALL IN ROOT PARENTS OR WHATEVER

if (parent != noone) {
    image_angle = parent.image_angle + frozen_angle;
    //image_angle = frozen_angle;
    x = parent.x + lengthdir_x(frozen_len, parent.image_angle - frozen_dir);
    y = parent.y + lengthdir_y(frozen_len, parent.image_angle - frozen_dir);
}

for (var i = 0; i < ds_list_size(children); i++) {
    with (ds_list_find_value(children, i))
        attachable_update();
}


