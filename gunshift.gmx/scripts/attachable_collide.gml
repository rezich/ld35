if ((object_index == objP || parent != noone) && (other.parent == noone)) {
    shake(3, 6);
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
    
    if ( (object_index == objP) || (object_index == objGun_base) && (!other.played_sfx)) {
        other.played_sfx = true;
        audio_play_sound(SFX_connectGun, 3, false);
    }
}


