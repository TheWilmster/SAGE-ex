function texture_set_interpolation_ext(sampler_id, enable) {
    gpu_set_texfilter_ext(sampler_id, enable);
}