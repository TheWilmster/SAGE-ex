function instance_create() {
    var myDepth = object_get_depth(argument[2]);
    return instance_create_depth(argument[0], argument[1], myDepth, argument[2]);
}