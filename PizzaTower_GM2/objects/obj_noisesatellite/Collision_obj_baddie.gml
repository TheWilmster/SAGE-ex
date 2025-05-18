with (other.id)
{
    if ((other.state == 104 && other.thrown == 1) || (other.state == 107 && obj_player.state == 42))
        instance_destroy();
}
