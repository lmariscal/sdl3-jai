SDL_MS_PER_SECOND   :: 1000;
SDL_US_PER_SECOND   :: 1000000;
SDL_NS_PER_SECOND   :: 1000000000;
SDL_NS_PER_MS       :: 1000000;
SDL_NS_PER_US       :: 1000;

SDL_SECONDS_TO_NS :: (s: u64) -> u64    {return s * SDL_NS_PER_SECOND;}
SDL_NS_TO_SECONDS :: (ns: u64) -> u64   {return ns / SDL_NS_PER_SECOND;}
SDL_MS_TO_NS      :: (ms: u64) -> u64   {return ms * SDL_NS_PER_MS;}
SDL_NS_TO_MS      :: (ns: u64) -> u64   {return ns / SDL_NS_PER_MS;}
SDL_US_TO_NS      :: (us: u64) -> u64   {return us * SDL_NS_PER_US;}
SDL_NS_TO_US      :: (ns: u64) -> u64   {return ns / SDL_NS_PER_US;}


SDL_GetTicks                :: () -> u64                                                      #foreign SDL3;
SDL_GetTicksNS              :: () -> u64                                                      #foreign SDL3;
SDL_GetPerformanceCounter   :: () -> u64                                                      #foreign SDL3;
SDL_GetPerformanceFrequency :: () -> u64                                                      #foreign SDL3;
SDL_Delay                   :: (ms: u32)                                                      #foreign SDL3;
SDL_DelayNS                 :: (ns: u64)                                                      #foreign SDL3;
SDL_DelayPrecise            :: (ns: u64)                                                      #foreign SDL3;

SDL_TimerID :: u32;
SDL_TimerCallback   :: #type (userdata: *void, timer_id: SDL_TimerID, interval: u32) -> u32;
SDL_NSTimerCallback :: #type (userdata: *void, timer_id: SDL_TimerID, interval: u64) -> u64;

SDL_AddTimer                :: (interval: u32, callback: SDL_TimerCallback,
                                userdata: *void) -> SDL_TimerID                               #foreign SDL3;
SDL_AddTimerNS              :: (interval: u64, callback: SDL_NSTimerCallback,
                                userdata: *void) -> SDL_TimerID                               #foreign SDL3;
SDL_RemoveTimer             :: (id: SDL_TimerID) -> bool                                      #foreign SDL3;
