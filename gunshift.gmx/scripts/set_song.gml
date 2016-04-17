var song;
var choose_song = argument[0];

switch (choose_song) {
    case 0:
        song = sound1_drums;
        break;
    case 1:
        song = sound2_Flute;
        break;
    case 2:
        song = sound3_Organ;
        break;
    case 3: 
        song = sound4_Strings;
        break;
    default:
        song = sound1_drums;
}

return song;
