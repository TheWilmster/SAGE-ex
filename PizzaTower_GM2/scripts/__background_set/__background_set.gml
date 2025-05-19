function __background_set() {
    var __prop = argument[0];
    var __bind = argument[1];
    var __val = argument[2];
    var __backinfo = __background_get_element(__bind);
    __background_set_internal(__prop, __bind, __val, __backinfo);
    var __res = __background_get_internal(__prop, __bind, __backinfo);
    return __res;
}