// argument[0]: the instance being moved
var enemy = argument[0];

var random_x = irandom_range(view_xview[0], view_xview + view_wview[0]);
var random_y = irandom_range(view_yview[0], view_yview + view_hview[0]);

var nearest_tile = instance_nearest(random_x, random_y, objFloor);
var variance_x = sprite_get_width(sprFloor)/2*(choose(-1,1))*(random_range(0,0.8));
var variance_y = sprite_get_height(sprFloor)/2*(choose(-1,1))*(random_range(0,0.8));

enemy.x = nearest_tile.x + variance_x;
enemy.y = nearest_tile.y + variance_y;
