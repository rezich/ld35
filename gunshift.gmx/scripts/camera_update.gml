x = objP.x;
y = objP.y;

view_xview[0] = ease(view_xview[0], max(x - view_wview[0] / 2, 0), 0.2);
view_yview[0] = ease(view_yview[0], max(y - view_hview[0] / 2, 0), 0.2);
