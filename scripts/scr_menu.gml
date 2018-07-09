switch (mpos)
{
    case 0:
    {
        audio_stop_sound(mus_theme);
        if (!instance_exists(obj_fade))
            instance_create(0, 0, obj_fade);
        break;
    }
    case 1:
    {
        if (window_get_fullscreen())
        {
            window_set_fullscreen(false);
            full_screen = "Off";
        }
        else
        {
            window_set_fullscreen(true);
            full_screen = "On";
        }
        break;
    }
    case 2:
    {
        global.credits = 1;
        break;
    }
    case 3:
    {
        audio_play_sound(snd_coin, 10, false);
        game_end();
        break;
    }
    default: break;
}
