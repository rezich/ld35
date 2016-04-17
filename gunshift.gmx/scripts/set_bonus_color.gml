var color;
var set_color = argument[0];

switch (set_color) {
    case 0:
        color = c_ltgray;
        break;
    case 1:
        color = c_purple;
        break;
    case 2:
        color = c_orange;
        break;
    case 3: 
        color = c_green;
        break;
    default:
        color = c_ltgray;
}

return color;
