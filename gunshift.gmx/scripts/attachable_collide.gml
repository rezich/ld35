if ((object_index == objP || parent != noone) && (other.parent == noone)) {
    other.parent = id;
    ds_list_add(children, other.id);
    other.frozen_angle = other.image_angle - image_angle;
    other.frozen_len = point_distance(other.x, other.y, x, y);
    other.frozen_dir = image_angle + radtodeg(arctan2(other.y - y, other.x - x));
    other.generation = generation + 1;
    other.ancestor = ancestor;
    
    // audio:
    // reset all of the gun audio channels each time a gun is attached (and detached)
    gun_assign_audio_channel();
}
