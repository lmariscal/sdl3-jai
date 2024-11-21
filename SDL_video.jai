SDL_DisplayID :: u32;
SDL_WindowID  :: u32;

SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER :: "SDL.video.wayland.wl_display";

SDL_SystemTheme :: enum u32
{
    SDL_SYSTEM_THEME_UNKNOWN;
    SDL_SYSTEM_THEME_LIGHT;
    SDL_SYSTEM_THEME_DARK;
}

SDL_DisplayModeData :: void;

SDL_DisplayMode :: struct
{
    displayID:                SDL_DisplayID;
    format:                   SDL_PixelFormat;
    w:                        s32;
    h:                        s32;
    pixel_density:            float32;
    refresh_rate:             float32;
    refresh_rate_numerator:   s32;
    refresh_rate_denominator: s32;

    internal:                 *SDL_DisplayModeData;
}

SDL_DisplayOrientation :: enum u32
{
    SDL_ORIENTATION_UNKNOWN;
    SDL_ORIENTATION_LANDSCAPE;
    SDL_ORIENTATION_LANDSCAPE_FLIPPED;
    SDL_ORIENTATION_PORTRAIT;
    SDL_ORIENTATION_PORTRAIT_FLIPPED;
}

SDL_Window      :: void;
SDL_WindowFlags :: u64;

SDL_WINDOW_FULLSCREEN           : u64 : 0x0000000000000001;
SDL_WINDOW_OPENGL               : u64 : 0x0000000000000002;
SDL_WINDOW_OCCLUDED             : u64 : 0x0000000000000004;
SDL_WINDOW_HIDDEN               : u64 : 0x0000000000000008;
SDL_WINDOW_BORDERLESS           : u64 : 0x0000000000000010;
SDL_WINDOW_RESIZABLE            : u64 : 0x0000000000000020;
SDL_WINDOW_MINIMIZED            : u64 : 0x0000000000000040;
SDL_WINDOW_MAXIMIZED            : u64 : 0x0000000000000080;
SDL_WINDOW_MOUSE_GRABBED        : u64 : 0x0000000000000100;
SDL_WINDOW_INPUT_FOCUS          : u64 : 0x0000000000000200;
SDL_WINDOW_MOUSE_FOCUS          : u64 : 0x0000000000000400;
SDL_WINDOW_EXTERNAL             : u64 : 0x0000000000000800;
SDL_WINDOW_MODAL                : u64 : 0x0000000000001000;
SDL_WINDOW_HIGH_PIXEL_DENSITY   : u64 : 0x0000000000002000;
SDL_WINDOW_MOUSE_CAPTURE        : u64 : 0x0000000000004000;
SDL_WINDOW_MOUSE_RELATIVE_MODE  : u64 : 0x0000000000008000;
SDL_WINDOW_ALWAYS_ON_TOP        : u64 : 0x0000000000010000;
SDL_WINDOW_UTILITY              : u64 : 0x0000000000020000;
SDL_WINDOW_TOOLTIP              : u64 : 0x0000000000040000;
SDL_WINDOW_POPUP_MENU           : u64 : 0x0000000000080000;
SDL_WINDOW_KEYBOARD_GRABBED     : u64 : 0x0000000000100000;
SDL_WINDOW_VULKAN               : u64 : 0x0000000010000000;
SDL_WINDOW_METAL                : u64 : 0x0000000020000000;
SDL_WINDOW_TRANSPARENT          : u64 : 0x0000000040000000;
SDL_WINDOW_NOT_FOCUSABLE        : u64 : 0x0000000080000000;

SDL_WINDOWPOS_UNDEFINED_MASK    : u64 : 0x1FFF0000;
SDL_WINDOWPOS_UNDEFINED_DISPLAY :: (x: u64) -> u64 {return (SDL_WINDOWPOS_UNDEFINED_MASK | x);}
SDL_WINDOWPOS_UNDEFINED         :: () -> u64 {return SDL_WINDOWPOS_UNDEFINED_DISPLAY(0);}
SDL_WINDOWPOS_ISUNDEFINED       :: (x: u64) -> bool {return ((x & 0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK);}

SDL_WINDOWPOS_CENTERED_MASK     : u64 : 0x2FFF0000;
SDL_WINDOWPOS_CENTERED_DISPLAY :: (x: u64) -> u64 {return (SDL_WINDOWPOS_CENTERED_MASK | x);}
SDL_WINDOWPOS_CENTERED         :: () -> u64 {return SDL_WINDOWPOS_CENTERED_DISPLAY(0);}
SDL_WINDOWPOS_ISCENTERED       :: (x: u64) -> bool {return ((x & 0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK);}

SDL_FlashOperation :: enum u32
{
    SDL_FLASH_CANCEL;
    SDL_FLASH_BRIEFLY;
    SDL_FLASH_UNTIL_FOCUSED;
}

SDL_GLContext      :: void;
SDL_GLContextState :: *SDL_GLContext;
SDL_EGLDisplay     :: *void;
SDL_EGLConfig      :: *void;
SDL_EGLSurface     :: *void;
SDL_EGLAttrib      :: *s32;
SDL_EGLint         :: s32;

SDL_EGLAttribArrayCallback :: #type (user_data: *void) -> *SDL_EGLAttrib;
SDL_EGLIntArrayCallback    :: #type (user_data: *void, display: SDL_EGLDisplay, config: SDL_EGLConfig) -> *SDL_EGLint;

SDL_GLAttr :: enum u32
{
    SDL_GL_RED_SIZE;
    SDL_GL_GREEN_SIZE;
    SDL_GL_BLUE_SIZE;
    SDL_GL_ALPHA_SIZE;
    SDL_GL_BUFFER_SIZE;
    SDL_GL_DOUBLEBUFFER;
    SDL_GL_DEPTH_SIZE;
    SDL_GL_STENCIL_SIZE;
    SDL_GL_ACCUM_RED_SIZE;
    SDL_GL_ACCUM_GREEN_SIZE;
    SDL_GL_ACCUM_BLUE_SIZE;
    SDL_GL_ACCUM_ALPHA_SIZE;
    SDL_GL_STEREO;
    SDL_GL_MULTISAMPLEBUFFERS;
    SDL_GL_MULTISAMPLESAMPLES;
    SDL_GL_ACCELERATED_VISUAL;
    SDL_GL_RETAINED_BACKING;
    SDL_GL_CONTEXT_MAJOR_VERSION;
    SDL_GL_CONTEXT_MINOR_VERSION;
    SDL_GL_CONTEXT_FLAGS;
    SDL_GL_CONTEXT_PROFILE_MASK;
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT;
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE;
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR;
    SDL_GL_CONTEXT_RESET_NOTIFICATION;
    SDL_GL_CONTEXT_NO_ERROR;
    SDL_GL_FLOATBUFFERS;
    SDL_GL_EGL_PLATFORM;
}


SDL_GLProfile :: u32;

SDL_GL_CONTEXT_PROFILE_CORE            : u32 : 0x0001;
SDL_GL_CONTEXT_PROFILE_COMPATIBILITY   : u32 : 0x0002;
SDL_GL_CONTEXT_PROFILE_ES              : u32 : 0x0004;


SDL_GLContextFlag :: u32;

SDL_GL_CONTEXT_DEBUG_FLAG              : u32 : 0x0001;
SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG : u32 : 0x0002;
SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG      : u32 : 0x0004;
SDL_GL_CONTEXT_RESET_ISOLATION_FLAG    : u32 : 0x0008;


SDL_GLContextReleaseFlag :: u32;

SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE   : u32 : 0x0000;
SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH  : u32 : 0x0001;


SDL_GLContextResetNotification :: u32;

SDL_GL_CONTEXT_RESET_NO_NOTIFICATION   : u32 : 0x0000;
SDL_GL_CONTEXT_RESET_LOSE_CONTEXT      : u32 : 0x0001;


SDL_GetNumVideoDrivers           :: () -> s32                                             #foreign SDL3;
SDL_GetVideoDriver               :: (index: s32) -> *u8                                   #foreign SDL3;
SDL_GetCurrentVideoDriver        :: () -> *u8                                             #foreign SDL3;
SDL_GetSystemTheme               :: () -> SDL_SystemTheme                                 #foreign SDL3;
SDL_GetDisplays                  :: (count: *s32) -> *SDL_DisplayID                       #foreign SDL3;
SDL_GetPrimaryDisplay            :: () -> SDL_DisplayID                                   #foreign SDL3;
SDL_GetDisplayProperties         :: (display_id: SDL_DisplayID) -> SDL_PropertiesID       #foreign SDL3;

SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN             :: "SDL.display.HDR_enabled";
SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER :: "SDL.display.KMSDRM.panel_orientation";

SDL_GetDisplayName               :: (display_id: SDL_DisplayID) -> *u8                    #foreign SDL3;
SDL_GetDisplayBounds             :: (display_id: SDL_DisplayID, rect: *SDL_Rect) -> bool  #foreign SDL3;
SDL_GetDisplayUsableBounds       :: (display_id: SDL_DisplayID, rect: *SDL_Rect) -> bool  #foreign SDL3;
SDL_GetNaturalDisplayOrientation :: (display_id: SDL_DisplayID) -> SDL_DisplayOrientation #foreign SDL3;
SDL_GetCurrentDisplayOrientation :: (display_id: SDL_DisplayID) -> SDL_DisplayOrientation #foreign SDL3;
SDL_GetDisplayContentScale       :: (display_id: SDL_DisplayID) -> float32                #foreign SDL3;

SDL_GetFullscreenDisplayModes :: (display_id: SDL_DisplayID, count: *s32) -> **SDL_DisplayMode #foreign SDL3;

SDL_GetClosestFullscreenDisplayMode :: (display_id: SDL_DisplayID, w: s32, h: s32, refresh_rate: float32, include_high_density_modes: bool, closest: *SDL_DisplayMode) -> bool #foreign SDL3;

SDL_GetDesktopDisplayMode        :: (display_id: SDL_DisplayID) -> *SDL_DisplayMode       #foreign SDL3;
SDL_GetCurrentDisplayMode        :: (display_id: SDL_DisplayID) -> *SDL_DisplayMode       #foreign SDL3;
SDL_GetDisplayForPoint           :: (point: *SDL_Point) -> SDL_DisplayID                  #foreign SDL3;
SDL_GetDisplayForRect            :: (rect: *SDL_Rect) -> SDL_DisplayID                    #foreign SDL3;
SDL_GetDisplayForWindow          :: (window: *SDL_Window) -> SDL_DisplayID                #foreign SDL3;
SDL_GetWindowPixelDensity        :: (window: *SDL_Window) -> float32                      #foreign SDL3;
SDL_GetWindowDisplayScale        :: (window: *SDL_Window) -> float32                      #foreign SDL3;
SDL_SetWindowFullscreenMode      :: (window: *SDL_Window, mode: *SDL_DisplayMode) -> bool #foreign SDL3;
SDL_GetWindowFullscreenMode      :: (window: *SDL_Window) -> *SDL_DisplayMode             #foreign SDL3;
SDL_GetWindowICCProfile          :: (window: *SDL_Window, size: *u64) -> *void            #foreign SDL3;
SDL_GetWindowPixelFormat         :: (window: *SDL_Window) -> SDL_PixelFormat              #foreign SDL3;
SDL_GetWindows                   :: (count: *s32) -> **SDL_Window                         #foreign SDL3;

SDL_CreateWindow                 :: (title: *u8, w: s32, h: s32, flags: SDL_WindowFlags) -> *SDL_Window #foreign SDL3;

SDL_CreatePopupWindow            :: (parent: *SDL_Window, offset_x: s32, offset_y: s32, w: s32, h: s32, flags: SDL_WindowFlags) -> *SDL_Window #foreign SDL3;

SDL_CreateWindowWithProperties   :: (props: SDL_PropertiesID) -> *SDL_Window              #foreign SDL3;

SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN               :: "SDL.window.create.always_on_top";
SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN                  :: "SDL.window.create.borderless";
SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN                   :: "SDL.window.create.focusable";
SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN   :: "SDL.window.create.external_graphics_context";
SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER                        :: "SDL.window.create.flags";
SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN                  :: "SDL.window.create.fullscreen";
SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER                       :: "SDL.window.create.height";
SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN                      :: "SDL.window.create.hidden";
SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN          :: "SDL.window.create.high_pixel_density";
SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN                   :: "SDL.window.create.maximized";
SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN                        :: "SDL.window.create.menu";
SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN                       :: "SDL.window.create.metal";
SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN                   :: "SDL.window.create.minimized";
SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN                       :: "SDL.window.create.modal";
SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN               :: "SDL.window.create.mouse_grabbed";
SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN                      :: "SDL.window.create.opengl";
SDL_PROP_WINDOW_CREATE_PARENT_POINTER                      :: "SDL.window.create.parent";
SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN                   :: "SDL.window.create.resizable";
SDL_PROP_WINDOW_CREATE_TITLE_STRING                        :: "SDL.window.create.title";
SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN                 :: "SDL.window.create.transparent";
SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN                     :: "SDL.window.create.tooltip";
SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN                     :: "SDL.window.create.utility";
SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN                      :: "SDL.window.create.vulkan";
SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER                        :: "SDL.window.create.width";
SDL_PROP_WINDOW_CREATE_X_NUMBER                            :: "SDL.window.create.x";
SDL_PROP_WINDOW_CREATE_Y_NUMBER                            :: "SDL.window.create.y";
SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER                :: "SDL.window.create.cocoa.window";
SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER                  :: "SDL.window.create.cocoa.view";
SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN :: "SDL.window.create.wayland.surface_role_custom";
SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN   :: "SDL.window.create.wayland.create_egl_window";
SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER          :: "SDL.window.create.wayland.wl_surface";
SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER                  :: "SDL.window.create.win32.hwnd";
SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER     :: "SDL.window.create.win32.pixel_format_hwnd";
SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER                   :: "SDL.window.create.x11.window";

SDL_GetWindowID                  :: (window: *SDL_Window) -> SDL_WindowID                 #foreign SDL3;
SDL_GetWindowFromID              :: (id: SDL_WindowID) -> *SDL_Window                     #foreign SDL3;
SDL_GetWindowParent              :: (window: *SDL_Window) -> *SDL_Window                  #foreign SDL3;
SDL_GetWindowProperties          :: (window: *SDL_Window) -> SDL_PropertiesID             #foreign SDL3;

SDL_PROP_WINDOW_SHAPE_POINTER                              :: "SDL.window.shape";
SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN                        :: "SDL.window.HDR_enabled";
SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT                      :: "SDL.window.SDR_white_level";
SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT                         :: "SDL.window.HDR_headroom";
SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER                     :: "SDL.window.android.window";
SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER                    :: "SDL.window.android.surface";
SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER                       :: "SDL.window.uikit.window";
SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER                :: "SDL.window.uikit.metal_view_tag";
SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER            :: "SDL.window.uikit.opengl.framebuffer";
SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER           :: "SDL.window.uikit.opengl.renderbuffer";
SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER    :: "SDL.window.uikit.opengl.resolve_framebuffer";
SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER                 :: "SDL.window.kmsdrm.dev_index";
SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER                       :: "SDL.window.kmsdrm.drm_fd";
SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER                  :: "SDL.window.kmsdrm.gbm_dev";
SDL_PROP_WINDOW_COCOA_WINDOW_POINTER                       :: "SDL.window.cocoa.window";
SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER                :: "SDL.window.cocoa.metal_view_tag";
SDL_PROP_WINDOW_OPENVR_OVERLAY_ID                          :: "SDL.window.openvr.overlay_id";
SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER                    :: "SDL.window.vivante.display";
SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER                     :: "SDL.window.vivante.window";
SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER                    :: "SDL.window.vivante.surface";
SDL_PROP_WINDOW_WIN32_HWND_POINTER                         :: "SDL.window.win32.hwnd";
SDL_PROP_WINDOW_WIN32_HDC_POINTER                          :: "SDL.window.win32.hdc";
SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER                     :: "SDL.window.win32.instance";
SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER                    :: "SDL.window.wayland.display";
SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER                    :: "SDL.window.wayland.surface";
SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER                   :: "SDL.window.wayland.viewport";
SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER                 :: "SDL.window.wayland.egl_window";
SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER                :: "SDL.window.wayland.xdg_surface";
SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER               :: "SDL.window.wayland.xdg_toplevel";
SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING  :: "SDL.window.wayland.xdg_toplevel_export_handle";
SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER                  :: "SDL.window.wayland.xdg_popup";
SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER             :: "SDL.window.wayland.xdg_positioner";
SDL_PROP_WINDOW_X11_DISPLAY_POINTER                        :: "SDL.window.x11.display";
SDL_PROP_WINDOW_X11_SCREEN_NUMBER                          :: "SDL.window.x11.screen";
SDL_PROP_WINDOW_X11_WINDOW_NUMBER                          :: "SDL.window.x11.window";

SDL_GetWindowFlags               :: (window: *SDL_Window) -> SDL_WindowFlags              #foreign SDL3;
SDL_SetWindowTitle               :: (window: *SDL_Window, title: *u8) -> bool             #foreign SDL3;
SDL_GetWindowTitle               :: (window: *SDL_Window) -> *u8                          #foreign SDL3;
SDL_SetWindowIcon                :: (window: *SDL_Window, icon: *SDL_Surface) -> bool     #foreign SDL3;
SDL_SetWindowPosition            :: (window: *SDL_Window, x: s32, y: s32) -> bool         #foreign SDL3;
SDL_GetWindowPosition            :: (window: *SDL_Window, x: *s32, y: *s32) -> bool       #foreign SDL3;
SDL_SetWindowSize                :: (window: *SDL_Window, w: s32, h: s32) -> bool         #foreign SDL3;
SDL_GetWindowSize                :: (window: *SDL_Window, w: *s32, h: *s32) -> bool       #foreign SDL3;
SDL_GetWindowSafeArea            :: (window: *SDL_Window, rect: *SDL_Rect) -> bool        #foreign SDL3;

SDL_SetWindowAspectRatio         :: (window: *SDL_Window, min_aspect: float32, max_aspect: float32) -> bool #foreign SDL3;

SDL_GetWindowAspectRatio         :: (window: *SDL_Window, min_aspect: *float32, max_aspect: *float32) -> bool #foreign SDL3;

SDL_GetWindowBordersSize         :: (window: *SDL_Window, top: *s32, left: *s32, bottom: *s32, right: *s32) -> bool #foreign SDL3;

SDL_GetWindowSizeInPixels        :: (window: *SDL_Window, w: *s32, h: *s32) -> bool       #foreign SDL3;
SDL_SetWindowMinimumSize         :: (window: *SDL_Window, min_w: s32, min_h: s32) -> bool #foreign SDL3;
SDL_GetWindowMinimumSize         :: (window: *SDL_Window, w: *s32, h: *s32) -> bool       #foreign SDL3;
SDL_SetWindowMaximumSize         :: (window: *SDL_Window, max_w: s32, max_h: s32) -> bool #foreign SDL3;
SDL_GetWindowMaximumSize         :: (window: *SDL_Window, w: *s32, h: *s32) -> bool       #foreign SDL3;
SDL_SetWindowBordered            :: (window: *SDL_Window, bordered: bool) -> bool         #foreign SDL3;
SDL_SetWindowResizable           :: (window: *SDL_Window, resizable: bool) -> bool        #foreign SDL3;
SDL_SetWindowAlwaysOnTop         :: (window: *SDL_Window, on_top: bool) -> bool           #foreign SDL3;
SDL_ShowWindow                   :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_HideWindow                   :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_RaiseWindow                  :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_MaximizeWindow               :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_MinimizeWindow               :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_RestoreWindow                :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_SetWindowFullscreen          :: (window: *SDL_Window, fullscreen: bool) -> bool       #foreign SDL3;
SDL_SyncWindow                   :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_WindowHasSurface             :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_GetWindowSurface             :: (window: *SDL_Window) -> *SDL_Surface                 #foreign SDL3;
SDL_SetWindowSurfaceVSync        :: (window: *SDL_Window, vsync: s32) -> bool             #foreign SDL3;

SDL_WINDOW_SURFACE_VSYNC_DISABLED :: 0;
SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE :: -1;

SDL_GetWindowSurfaceVSync        :: (window: *SDL_Window, vsync: *s32) -> bool            #foreign SDL3;
SDL_UpdateWindowSurface          :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_UpdateWindowSurfaceRects     :: (window: *SDL_Window, rects: *SDL_Rect, num_rects: s32) -> bool #foreign SDL3;

SDL_DestroyWindowSurface         :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_SetWindowKeyboardGrab        :: (window: *SDL_Window, grabbed: bool) -> bool          #foreign SDL3;
SDL_SetWindowMouseGrab           :: (window: *SDL_Window, grabbed: bool) -> bool          #foreign SDL3;
SDL_GetWindowKeyboardGrab        :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_GetWindowMouseGrab           :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_GetGrabbedWindow             :: () -> *SDL_Window                                     #foreign SDL3;
SDL_SetWindowMouseRect           :: (window: *SDL_Window, rect: *SDL_Rect) -> bool        #foreign SDL3;
SDL_GetWindowMouseRect           :: (window: *SDL_Window) -> *SDL_Rect                    #foreign SDL3;
SDL_SetWindowOpacity             :: (window: *SDL_Window, opacity: float32) -> bool       #foreign SDL3;
SDL_GetWindowOpacity             :: (window: *SDL_Window) -> float32                      #foreign SDL3;
SDL_SetWindowParent              :: (window: *SDL_Window, parent: *SDL_Window) -> bool    #foreign SDL3;
SDL_SetWindowModal               :: (window: *SDL_Window, modal: bool) -> bool            #foreign SDL3;
SDL_SetWindowFocusable           :: (window: *SDL_Window, focusable: bool) -> bool        #foreign SDL3;
SDL_ShowWindowSystemMenu         :: (window: *SDL_Window, x: s32, y: s32) -> bool         #foreign SDL3;

SDL_HitTestResult :: enum u32
{
    SDL_HITTEST_NORMAL;
    SDL_HITTEST_DRAGGABLE;
    SDL_HITTEST_RESIZE_TOPLEFT;
    SDL_HITTEST_RESIZE_TOP;
    SDL_HITTEST_RESIZE_TOPRIGHT;
    SDL_HITTEST_RESIZE_RIGHT;
    SDL_HITTEST_RESIZE_BOTTOMRIGHT;
    SDL_HITTEST_RESIZE_BOTTOM;
    SDL_HITTEST_RESIZE_BOTTOMLEFT;
    SDL_HITTEST_RESIZE_LEFT;
}

SDL_HitTest :: #type (window: *SDL_Window, area: *SDL_Point, data: *void) -> SDL_HitTestResult;

SDL_SetWindowHitTest             :: (window: *SDL_Window, callback: SDL_HitTest, callback_data: *void) -> bool #foreign SDL3;

SDL_SetWindowShape               :: (window: *SDL_Window, shape: *SDL_Surface) -> bool    #foreign SDL3;
SDL_FlashWindow                  :: (window: *SDL_Window, operation: SDL_FlashOperation) -> bool #foreign SDL3;

SDL_DestroyWindow                :: (window: *SDL_Window)                                 #foreign SDL3;
SDL_ScreenSaverEnabled           :: () -> bool                                            #foreign SDL3;
SDL_EnableScreenSaver            :: () -> bool                                            #foreign SDL3;
SDL_DisableScreenSaver           :: () -> bool                                            #foreign SDL3;
SDL_GL_LoadLibrary               :: (path: *u8) -> bool                                   #foreign SDL3;
SDL_GL_GetProcAddress            :: (proc: *u8) -> SDL_FunctionPointer                    #foreign SDL3;
SDL_EGL_GetProcAddress           :: (proc: *u8) -> SDL_FunctionPointer                    #foreign SDL3;
SDL_GL_UnloadLibrary             :: ()                                                    #foreign SDL3;
SDL_GL_ExtensionSupported        :: (extension: *u8) -> bool                              #foreign SDL3;
SDL_GL_ResetAttributes           :: ()                                                    #foreign SDL3;
SDL_GL_SetAttribute              :: (attr: SDL_GLAttr, value: s32) -> bool                #foreign SDL3;
SDL_GL_GetAttribute              :: (attr: SDL_GLAttr, value: *s32) -> bool               #foreign SDL3;
SDL_GL_CreateContext             :: (window: *SDL_Window) -> SDL_GLContext                #foreign SDL3;
SDL_GL_MakeCurrent               :: (window: *SDL_Window, ctx: SDL_GLContext) -> bool     #foreign SDL3;
SDL_GL_GetCurrentWindow          :: () -> *SDL_Window                                     #foreign SDL3;
SDL_GL_GetCurrentContext         :: () -> SDL_GLContext                                   #foreign SDL3;
SDL_EGL_GetCurrentDisplay        :: () -> SDL_EGLDisplay                                  #foreign SDL3;
SDL_EGL_GetCurrentConfig         :: () -> SDL_EGLConfig                                   #foreign SDL3;
SDL_EGL_GetWindowSurface         :: (window: *SDL_Window) -> SDL_EGLSurface               #foreign SDL3;
SDL_EGL_SetAttributeCallbacks    :: (platform_attrib_callback: SDL_EGLAttribArrayCallback,
                                     surface_attrib_callback: SDL_EGLIntArrayCallback,
                                     context_attrib_callback: SDL_EGLIntArrayCallback,
                                     user_data: *void) #foreign SDL3;

SDL_GL_SetSwapInterval           :: (interval: s32) -> bool                               #foreign SDL3;
SDL_GL_GetSwapInterval           :: (interval: *s32) -> bool                              #foreign SDL3;
SDL_GL_SwapWindow                :: (window: *SDL_Window) -> bool                         #foreign SDL3;
SDL_GL_DestroyContext            :: (ctx: SDL_GLContext) -> bool                          #foreign SDL3;
