var choice = irandom_range(0, 3);
var song;


switch (choice) {
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
