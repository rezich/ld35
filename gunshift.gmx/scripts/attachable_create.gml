parent = noone;
ancestor = noone;

children = ds_list_create();
frozen_angle = 0;
frozen_len = 0;
frozen_dir = 0;

generation = 0;

can_shoot = true;

var song_length = audio_sound_length(bass_lopass);
timing = (room_speed*song_length)/16;

shot_delay = choose(timing, timing*2);
bullet_spread = 3;
bullet_speed = 7;
barrel_length = 48;


// audio
assigned_audio_channel = -1; // -1 is the default null value (no audio channel assigned currently)
