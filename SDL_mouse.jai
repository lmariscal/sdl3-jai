SDL_MouseID          :: u32;
SDL_Cursor           :: void;


SDL_SystemCursor :: enum u32
{
    SDL_SYSTEM_CURSOR_DEFAULT;
    SDL_SYSTEM_CURSOR_TEXT;
    SDL_SYSTEM_CURSOR_WAIT;
    SDL_SYSTEM_CURSOR_CROSSHAIR;
    SDL_SYSTEM_CURSOR_PROGRESS;
    SDL_SYSTEM_CURSOR_NWSE_RESIZE;
    SDL_SYSTEM_CURSOR_NESW_RESIZE;
    SDL_SYSTEM_CURSOR_EW_RESIZE;
    SDL_SYSTEM_CURSOR_NS_RESIZE;
    SDL_SYSTEM_CURSOR_MOVE;
    SDL_SYSTEM_CURSOR_NOT_ALLOWED;
    SDL_SYSTEM_CURSOR_POINTER;
    SDL_SYSTEM_CURSOR_NW_RESIZE;
    SDL_SYSTEM_CURSOR_N_RESIZE;
    SDL_SYSTEM_CURSOR_NE_RESIZE;
    SDL_SYSTEM_CURSOR_E_RESIZE;
    SDL_SYSTEM_CURSOR_SE_RESIZE;
    SDL_SYSTEM_CURSOR_S_RESIZE;
    SDL_SYSTEM_CURSOR_SW_RESIZE;
    SDL_SYSTEM_CURSOR_W_RESIZE;
    SDL_SYSTEM_CURSOR_COUNT;
}

SDL_MouseWheelDirection :: enum u32
{
    SDL_MOUSEWHEEL_NORMAL;
    SDL_MOUSEWHEEL_FLIPPED;
}

SDL_BUTTON_LEFT     :: 1;
SDL_BUTTON_MIDDLE   :: 2;
SDL_BUTTON_RIGHT    :: 3;
SDL_BUTTON_X1       :: 4;
SDL_BUTTON_X2       :: 5;

SDL_BUTTON_MASK     :: (x: s32) -> s32 {return (xx 1 << (x-1));}
SDL_BUTTON_LMASK    :: #run SDL_BUTTON_MASK(SDL_BUTTON_LEFT);
SDL_BUTTON_MMASK    :: #run SDL_BUTTON_MASK(SDL_BUTTON_MIDDLE);
SDL_BUTTON_RMASK    :: #run SDL_BUTTON_MASK(SDL_BUTTON_RIGHT);
SDL_BUTTON_X1MASK   :: #run SDL_BUTTON_MASK(SDL_BUTTON_X1);
SDL_BUTTON_X2MASK   :: #run SDL_BUTTON_MASK(SDL_BUTTON_X2);

SDL_MouseButtonFlags :: u32;


SDL_HasMouse                     :: () -> bool                                                        #foreign SDL3;
SDL_GetMice                      :: (count: *s32) -> SDL_MouseID                                      #foreign SDL3;
SDL_GetMouseNameForID            :: (instance_id: SDL_MouseID) -> *u8                                 #foreign SDL3;
SDL_GetMouseFocus                :: () -> *SDL_Window                                                 #foreign SDL3;
SDL_GetMouseState                :: (x: *float32, y: *float32) -> SDL_MouseButtonFlags                #foreign SDL3;
SDL_GetGlobalMouseState          :: (x: *float32, y: *float32) -> SDL_MouseButtonFlags                #foreign SDL3;
SDL_GetRelativeMouseState        :: (x: *float32, y: *float32) -> SDL_MouseButtonFlags                #foreign SDL3;
SDL_WarpMouseInWindow            :: (window: *SDL_Window, x: float32, y: float32)                     #foreign SDL3;
SDL_WarpMouseGlobal              :: (x: float32, y: float32) -> bool                                  #foreign SDL3;
SDL_SetWindowRelativeMouseMode   :: (window: *SDL_Window, enabled: bool) -> bool                      #foreign SDL3;
SDL_GetWindowRelativeMouseMode   :: (window: *SDL_Window) -> bool                                     #foreign SDL3;
SDL_CaptureMouse                 :: (enabled: bool) -> bool                                           #foreign SDL3;
SDL_CreateCursor                 :: (data: *u8, mask: *u8,
                                     w: s32, h: s32, hot_x: s32, hot_y: s32) -> *SDL_Cursor           #foreign SDL3;
SDL_CreateColorCursor            :: (surface: *SDL_Surface, hot_x: s32, hot_y: s32) -> *SDL_Cursor    #foreign SDL3;
SDL_CreateSystemCursor           :: (id: SDL_SystemCursor) -> *SDL_Cursor                             #foreign SDL3;
SDL_SetCursor                    :: (cursor: *SDL_Cursor) -> bool                                     #foreign SDL3;
SDL_GetCursor                    :: () -> *SDL_Cursor                                                 #foreign SDL3;
SDL_GetDefaultCursor             :: () -> *SDL_Cursor                                                 #foreign SDL3;
SDL_DestroyCursor                :: (cursor: *SDL_Cursor)                                             #foreign SDL3;
SDL_ShowCursor                   :: () -> bool                                                        #foreign SDL3;
SDL_HideCursor                   :: () -> bool                                                        #foreign SDL3;
SDL_CursorVisible                :: () -> bool                                                        #foreign SDL3;
