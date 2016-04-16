if ((object_index == objP || parent == noone) && (other.parent == noone)) {
    other.parent = id;
    ds_list_add(children, other.id);
    other.frozen_angle = other.image_angle;
    other.frozen_len = point_distance(other.x, other.y, x, y);
    other.frozen_dir = point_direction(other.x, other.y, x, y);
}
