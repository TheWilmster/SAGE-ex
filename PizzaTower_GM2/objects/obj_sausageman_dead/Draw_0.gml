if (cigar == 1)
{
    pal_swap_set(111, 1, 0);
    draw_self();
    shader_reset();
}
else
{
    draw_self();
}
