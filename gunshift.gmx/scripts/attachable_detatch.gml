var obj = other.parent;

ds_list_delete(obj.children, ds_list_find_index(obj.children, id));

for (var i = 0; i < ds_list_size(children); i++) {
    with (ds_list_find_value(children, i))
        attachable_detatch();
}
instance_destroy();
