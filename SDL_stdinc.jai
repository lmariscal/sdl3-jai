SDL_FLT_EPSILON :: 1.1920928e-07;

SDL_FunctionPointer :: #type ();

SDL_strstr :: (haystack: *u8, needle: *u8) -> *u8 #foreign SDL3;

SDL_free :: (mem: *void) #foreign SDL3;

SDL_fabsf :: (x: float32) -> float32 #foreign SDL3;

SDL_sin :: (x: float64) -> float64 #foreign SDL3;
SDL_sinf :: (x: float32) -> float32 #foreign SDL3;

SDL_FOURCC :: (a: u8, b: u8, c: u8, d: u8) -> u32
{
    return ((cast(u32) a) << 0) | ((cast(u32) b) << 8) | ((cast(u32) c) << 16) | ((cast(u32) d) << 24);
}
