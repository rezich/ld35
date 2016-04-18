var song;
var choose_song = argument[0];

switch (choose_song) {
    case 0:
        song = bass_lopass;
        break;
    case 1:
        song = bass_nofilter;
        break;
    case 2:
        song = drums_breaks;
        break;
    case 3: 
        song = drums_toms;
        break;
    case 4: 
        song = drums_basic;
        break;
    case 5: 
        song = drums_basic2;
        break;
    case 6:
        song = -1;
        break;
        
    default:
        song = -1; // no song
}

return song;
