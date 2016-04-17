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
    default:
        song = bass_lopass;
}

return song;
