Power_State :: enum s32
{
    POWERSTATE_ERROR :: -1;
    POWERSTATE_UNKNOWN;
    POWERSTATE_ON_BATTERY;
    POWERSTATE_NO_BATTERY;
    POWERSTATE_CHARGING;
    POWERSTATE_CHARGED;
}

get_power_info :: (seconds: *s32, percent: *s32) -> Power_State #foreign SDL3 "SDL_GetPowerInfo";
