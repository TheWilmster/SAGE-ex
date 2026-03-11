function instance_create(x, y, obj) {
    var myDepth = object_get_depth(obj);
    return instance_create_depth(x, y, myDepth, obj);
}