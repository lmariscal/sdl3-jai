SDL_FLT_EPSILON :: 1.1920928e-07;

SDL_FunctionPointer :: #type ();

SDL_strstr :: (haystack: *u8, needle: *u8) -> *u8 #foreign SDL3;

SDL_free :: (mem: *void) #foreign SDL3;

SDL_fabsf :: (x: float32) -> float32 #foreign SDL3;
