x = objP.x;
y = objP.y;

if (shake_power > 0) {
    shake_x = random_range(-shake_power, shake_power);
    shake_y = random_range(-shake_power, shake_power);
}
else {
    shake_x = ease(shake_x, 0, 0.2);
    shake_y = ease(shake_y, 0, 0.2);
}


view_xview[0] = ease(view_xview[0], max(x - view_wview[0] / 2, 0), 0.2) + shake_x;
view_yview[0] = ease(view_yview[0], max(y - view_hview[0] / 2, 0), 0.2) + shake_y;


