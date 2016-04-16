for (i = 0; i <= ENEMY_AMOUNT; i++) {

    random_x = irandom_range(16, (room_width - 16));
    random_y = irandom_range(16, (room_height - 16));

    instance_create(random_x, random_y, obj_line);


}
