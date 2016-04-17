// argument0: the audio object id

// Description: This function will loop through any endpoint guns on the screen and assign that audio channel to have it's gun type

current_gun_channel = 0; // reset all of the gun sfx channels each collision

// id's of the guns that emit sounds:
for (var i = MAX_GUN_CHANNELS; i > 0; i--) {
    gun_id[i] = noone;
}


with (objGun_base) { //loop through each gun once:
    if ( 
    (other.current_gun_channel < MAX_GUN_CHANNELS) && // short circuiting saves processing time
    ancestor.object_index == objP &&  // if it's attached to the player
    (x >= view_xview[0] && // if it's on the screen
    x <= view_xview[0] + view_wview[0] && 
    y >= view_yview[0] && 
    y <= view_yview[0] + view_hview[0]) && 
    (ds_list_size(children) == 0) // if it is shootable
    ) {
        
        assigned_audio_channel = other.current_gun_channel; // make "if" logic in that gun step event to emit the sound
        // assign this gun's id to the array in the script:
        other.gun_id[other.current_gun_channel] = id;
        other.current_gun_channel++

        
    }
}

// in objGun_base create event:
// assigned_audio_channel = -1; 


    




