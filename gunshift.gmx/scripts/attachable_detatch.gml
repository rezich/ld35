ds_list_delete(parent.children, ds_list_find_index(parent.children, id));

for (var i = 0; i < ds_list_size(children); i++) {
    with (ds_list_find_value(children, i))
        attachable_detatch();
}

if (ancestor == objP.id) {
    instance_destroy();
    //make the thing burn and stuff   
}

else {
    ancestor = noone;
    parent = noone;
    generation = 0;
    ds_list_clear(children);
}
