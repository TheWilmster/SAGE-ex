function __view_set() {
    var __prop = argument[0];
    var __index = argument[1];
    var __val = argument[2];
    __view_set_internal(__prop, __index, __val);
    var __res = __view_get(__prop, __index);
    return __res;
}