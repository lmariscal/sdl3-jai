SDL_EventType :: enum u32
{
    SDL_EVENT_FIRST                          :: 0;

    // Application events
    SDL_EVENT_QUIT                           :: 0x100;

    // Android/iOS events
    SDL_EVENT_TERMINATING;
    SDL_EVENT_LOW_MEMORY;
    SDL_EVENT_WILL_ENTER_BACKGROUND;
    SDL_EVENT_DID_ENTER_BACKGROUND;
    SDL_EVENT_WILL_ENTER_FOREGROUND;
    SDL_EVENT_DID_ENTER_FOREGROUND;
    SDL_EVENT_LOCALE_CHANGED;
    SDL_EVENT_SYSTEM_THEME_CHANGED;

    // Display events
    SDL_EVENT_DISPLAY_ORIENTATION            :: 0x151;
    SDL_EVENT_DISPLAY_ADDED;
    SDL_EVENT_DISPLAY_REMOVED;
    SDL_EVENT_DISPLAY_MOVED;
    SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED;
    SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED;
    SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED;
    SDL_EVENT_DISPLAY_FIRST :: SDL_EVENT_DISPLAY_ORIENTATION;
    SDL_EVENT_DISPLAY_LAST :: SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED;

    // Window events
    SDL_EVENT_WINDOW_SHOWN                   :: 0x202;
    SDL_EVENT_WINDOW_HIDDEN;
    SDL_EVENT_WINDOW_EXPOSED;
    SDL_EVENT_WINDOW_MOVED;
    SDL_EVENT_WINDOW_RESIZED;
    SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED;
    SDL_EVENT_WINDOW_METAL_VIEW_RESIZED;
    SDL_EVENT_WINDOW_MINIMIZED;
    SDL_EVENT_WINDOW_MAXIMIZED;
    SDL_EVENT_WINDOW_RESTORED;
    SDL_EVENT_WINDOW_MOUSE_ENTER;
    SDL_EVENT_WINDOW_MOUSE_LEAVE;
    SDL_EVENT_WINDOW_FOCUS_GAINED;
    SDL_EVENT_WINDOW_FOCUS_LOST;
    SDL_EVENT_WINDOW_CLOSE_REQUESTED;
    SDL_EVENT_WINDOW_HIT_TEST;
    SDL_EVENT_WINDOW_ICCPROF_CHANGED;
    SDL_EVENT_WINDOW_DISPLAY_CHANGED;
    SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED;
    SDL_EVENT_WINDOW_SAFE_AREA_CHANGED;
    SDL_EVENT_WINDOW_OCCLUDED;
    SDL_EVENT_WINDOW_ENTER_FULLSCREEN;
    SDL_EVENT_WINDOW_LEAVE_FULLSCREEN;
    SDL_EVENT_WINDOW_DESTROYED;
    SDL_EVENT_WINDOW_HDR_STATE_CHANGED;
    SDL_EVENT_WINDOW_FIRST :: SDL_EVENT_WINDOW_SHOWN;
    SDL_EVENT_WINDOW_LAST :: SDL_EVENT_WINDOW_HDR_STATE_CHANGED;

    // Keyboard events
    SDL_EVENT_KEY_DOWN                       :: 0x300;
    SDL_EVENT_KEY_UP;
    SDL_EVENT_TEXT_EDITING;
    SDL_EVENT_TEXT_INPUT;
    SDL_EVENT_KEYMAP_CHANGED;
    SDL_EVENT_KEYBOARD_ADDED;
    SDL_EVENT_KEYBOARD_REMOVED;
    SDL_EVENT_TEXT_EDITING_CANDIDATES;

    // Mouse events
    SDL_EVENT_MOUSE_MOTION                   :: 0x400;
    SDL_EVENT_MOUSE_BUTTON_DOWN;
    SDL_EVENT_MOUSE_BUTTON_UP;
    SDL_EVENT_MOUSE_WHEEL;
    SDL_EVENT_MOUSE_ADDED;
    SDL_EVENT_MOUSE_REMOVED;

    // Joystick events
    SDL_EVENT_JOYSTICK_AXIS_MOTION           :: 0x600;
    SDL_EVENT_JOYSTICK_BALL_MOTION;
    SDL_EVENT_JOYSTICK_HAT_MOTION;
    SDL_EVENT_JOYSTICK_BUTTON_DOWN;
    SDL_EVENT_JOYSTICK_BUTTON_UP;
    SDL_EVENT_JOYSTICK_ADDED;
    SDL_EVENT_JOYSTICK_REMOVED;
    SDL_EVENT_JOYSTICK_BATTERY_UPDATED;
    SDL_EVENT_JOYSTICK_UPDATE_COMPLETE;

    // Gamepad events
    SDL_EVENT_GAMEPAD_AXIS_MOTION            :: 0x650;
    SDL_EVENT_GAMEPAD_BUTTON_DOWN;
    SDL_EVENT_GAMEPAD_BUTTON_UP;
    SDL_EVENT_GAMEPAD_ADDED;
    SDL_EVENT_GAMEPAD_REMOVED;
    SDL_EVENT_GAMEPAD_REMAPPED;
    SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN;
    SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION;
    SDL_EVENT_GAMEPAD_TOUCHPAD_UP;
    SDL_EVENT_GAMEPAD_SENSOR_UPDATE;
    SDL_EVENT_GAMEPAD_UPDATE_COMPLETE;
    SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED;

    // Touch events
    SDL_EVENT_FINGER_DOWN                    :: 0x700;
    SDL_EVENT_FINGER_UP;
    SDL_EVENT_FINGER_MOTION;

    // Clipboard events
    SDL_EVENT_CLIPBOARD_UPDATE               :: 0x900;

    // Drag and drop events
    SDL_EVENT_DROP_FILE                      :: 0x1000;
    SDL_EVENT_DROP_TEXT;
    SDL_EVENT_DROP_BEGIN;
    SDL_EVENT_DROP_COMPLETE;
    SDL_EVENT_DROP_POSITION;

    // Audio hotplug events
    SDL_EVENT_AUDIO_DEVICE_ADDED             :: 0x1100;
    SDL_EVENT_AUDIO_DEVICE_REMOVED;
    SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED;

    // Sensor events
    SDL_EVENT_SENSOR_UPDATE                  :: 0x1200;

    // Pressure-sensitive pen events
    SDL_EVENT_PEN_PROXIMITY_IN               :: 0x1300;
    SDL_EVENT_PEN_PROXIMITY_OUT;
    SDL_EVENT_PEN_DOWN;
    SDL_EVENT_PEN_UP;
    SDL_EVENT_PEN_BUTTON_DOWN;
    SDL_EVENT_PEN_BUTTON_UP;
    SDL_EVENT_PEN_MOTION;
    SDL_EVENT_PEN_AXIS;

    // Camera hotplug events
    SDL_EVENT_CAMERA_DEVICE_ADDED            :: 0x1400;
    SDL_EVENT_CAMERA_DEVICE_REMOVED;
    SDL_EVENT_CAMERA_DEVICE_APPROVED;
    SDL_EVENT_CAMERA_DEVICE_DENIED;

    // Render events
    SDL_EVENT_RENDER_TARGETS_RESET           :: 0x2000;
    SDL_EVENT_RENDER_DEVICE_RESET;
    SDL_EVENT_RENDER_DEVICE_LOST;

    // Reserved events for private platforms
    SDL_EVENT_PRIVATE0                       :: 0x4000;
    SDL_EVENT_PRIVATE1;
    SDL_EVENT_PRIVATE2;
    SDL_EVENT_PRIVATE3;

    // Internal events
    SDL_EVENT_POLL_SENTINEL                  :: 0x7F00;

    // Events SDL_EVENT_USER through SDL_EVENT_LAST are for your use, and should be allocated with SDL_RegisterEvents()
    SDL_EVENT_USER                           :: 0x8000;

    // This last event is only for bounding internal arrays
    SDL_EVENT_LAST                           :: 0xFFFF;

    // This just makes sure the enum is the size of Uint32
    SDL_EVENT_ENUM_PADDING                   :: 0x7FFFFFFF;
}

SDL_CommonEvent :: struct
{
    type:      u32;
    reserved:  u32;
    timestamp: u64;
}

SDL_DisplayEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    displayID: SDL_DisplayID;
    data1:     s32;
    data2:     s32;
}

SDL_WindowEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    data1:     s32;
    data2:     s32;
}

SDL_KeyboardDeviceEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_KeyboardID;
}

SDL_KeyboardEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_KeyboardID;
    scancode:  SDL_Scancode;
    key:       SDL_Keycode;
    mod:       SDL_Keymod;
    raw:       u16;
    down:      bool;
    repeat:    bool;
}

SDL_TextEditingEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    text:      *u8;
    start:     s32;
    length:    s32;
}

SDL_TextEditingCandidatesEvent :: struct
{
    type:               SDL_EventType;
    reserved:           u32;
    timestamp:          u64;
    windowID:           SDL_WindowID;
    candidates:         **u8;
    num_candidates:     s32;
    selected_candidate: s32;
    horizontal:         bool;
    padding1:           u8;
    padding2:           u8;
    padding3:           u8;
}

SDL_TextInputEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    text:      *u8;
}

SDL_MouseDeviceEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_MouseID;
}

SDL_MouseMotionEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_MouseID;
    state:     SDL_MouseButtonFlags ;
    x:         float32;
    y:         float32;
    xrel:      float32;
    yrel:      float32;
}

SDL_MouseButtonEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_MouseID;
    button:    u8;
    down:      bool;
    clicks:    u8;
    padding:   u8;
    x:         float32;
    y:         float32;
}

SDL_MouseWheelEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_MouseID;
    x:         float32;
    y:         float32;
    direction: SDL_MouseWheelDirection;
    mouse_x:   float32;
    mouse_y:   float32;
}

SDL_JoyAxisEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    axis:      u8;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
    value:     s16;
    padding4:  u16;
}

SDL_JoyBallEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    ball:      u8;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
    xrel:      s16;
    yrel:      s16;
}

SDL_JoyHatEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    hat:       u8;
    value:     u8;
    padding1:  u8;
    padding2:  u8;
}

SDL_JoyButtonEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    button:    u8;
    down:      bool;
    padding1:  u8;
    padding2:  u8;
}

SDL_JoyDeviceEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
}

SDL_JoyBatteryEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    state:     SDL_PowerState;
    percent:   s32;
}

SDL_GamepadAxisEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    axis:      u8;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
    value:     s16;
    padding4:  u16;
}

SDL_GamepadButtonEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    button:    u8;
    down:      bool;
    padding1:  u8;
    padding2:  u8;
}

SDL_GamepadDeviceEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
}

SDL_GamepadTouchpadEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_JoystickID;
    touchpad:  s32;
    finger:    s32;
    x:         float32;
    y:         float32;
    pressure:  float32;
}

SDL_GamepadSensorEvent :: struct
{
    type:             SDL_EventType;
    reserved:         u32;
    timestamp:        u64;
    which:            SDL_JoystickID;
    sensor:           s32;
    data:             [3]float32;
    sensor_timestamp: u64;
}

SDL_AudioDeviceEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_AudioDeviceID;
    recording: bool;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
}

SDL_CameraDeviceEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    which:     SDL_CameraID;
}

SDL_TouchFingerEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    touchID:   SDL_TouchID;
    fingerID:  SDL_FingerID;
    x:         float32;
    y:         float32;
    dx:        float32;
    dy:        float32;
    pressure:  float32;
    windowID:  SDL_WindowID;
}

SDL_PenProximityEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_PenID;
}

SDL_PenMotionEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_PenID;
    pen_state: SDL_PenInputFlags ;
    x:         float32;
    y:         float32;
}

SDL_PenTouchEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_PenID;
    pen_state: SDL_PenInputFlags ;
    x:         float32;
    y:         float32;
    eraser:    bool;
    down:      bool;
}

SDL_PenButtonEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_PenID;
    pen_state: SDL_PenInputFlags;
    x:         float32;
    y:         float32;
    button:    u8;
    down:      bool;
}

SDL_PenAxisEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    which:     SDL_PenID;
    pen_state: SDL_PenInputFlags;
    x:         float32;
    y:         float32;
    axis:      SDL_PenAxis;
    value:     float32;
}

SDL_DropEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
    windowID:  SDL_WindowID;
    x:         float32;
    y:         float32;
    source:    *u8;
    data:      *u8;
}

SDL_ClipboardEvent :: struct
{
    type:         SDL_EventType;
    reserved:     u32;
    timestamp:    u64;
    owner:        bool;
    n_mime_types: s32;
    mime_types:   **u8;
}

SDL_SensorEvent :: struct
{
    type:             SDL_EventType;
    reserved:         u32;
    timestamp:        u64;
    which:            SDL_SensorID;
    data:             [6]float32;
    sensor_timestamp: u64;
}

SDL_QuitEvent :: struct
{
    type:      SDL_EventType;
    reserved:  u32;
    timestamp: u64;
}

SDL_UserEvent :: struct
{
    type:      u32;
    reserved:  u32;
    windowID:  SDL_WindowID;
    code:      s32;
    data1:     *void;
    data2:     *void;
}

SDL_Event :: union
{
    type:            SDL_EventType;
    common:          SDL_CommonEvent;
    display:         SDL_DisplayEvent;
    window:          SDL_WindowEvent;
    kdevice:         SDL_KeyboardDeviceEvent;
    key:             SDL_KeyboardEvent;
    edit:            SDL_TextEditingEvent;
    edit_candidates: SDL_TextEditingCandidatesEvent;
    text:            SDL_TextInputEvent;
    mdevice:         SDL_MouseDeviceEvent;
    motion:          SDL_MouseMotionEvent;
    button:          SDL_MouseButtonEvent;
    wheel:           SDL_MouseWheelEvent;
    jdevice:         SDL_JoyDeviceEvent;
    jaxis:           SDL_JoyAxisEvent;
    jball:           SDL_JoyBallEvent;
    jhat:            SDL_JoyHatEvent;
    jbutton:         SDL_JoyButtonEvent;
    jbattery:        SDL_JoyBatteryEvent;
    gdevice:         SDL_GamepadDeviceEvent;
    gaxis:           SDL_GamepadAxisEvent;
    gbutton:         SDL_GamepadButtonEvent;
    gtouchpad:       SDL_GamepadTouchpadEvent;
    gsensor:         SDL_GamepadSensorEvent;
    adevice:         SDL_AudioDeviceEvent;
    cdevice:         SDL_CameraDeviceEvent;
    sensor:          SDL_SensorEvent;
    quit:            SDL_QuitEvent;
    user:            SDL_UserEvent;
    tfinger:         SDL_TouchFingerEvent;
    pproximity:      SDL_PenProximityEvent;
    ptouch:          SDL_PenTouchEvent;
    pmotion:         SDL_PenMotionEvent;
    pbutton:         SDL_PenButtonEvent;
    paxis:           SDL_PenAxisEvent;
    drop:            SDL_DropEvent;
    clipboard:       SDL_ClipboardEvent;

    /* This is necessary for ABI compatibility between Visual C++ and GCC.
       Visual C++ will respect the push pack pragma and use 52 bytes (size of
       SDL_TextEditingEvent, the largest structure for 32-bit and 64-bit
       architectures) for this union, and GCC will use the alignment of the
       largest datatype within the union, which is 8 bytes on 64-bit
       architectures.

       So... we'll add padding to force the size to be the same for both.

       On architectures where pointers are 16 bytes, this needs rounding up to
       the next multiple of 16, 64, and on architectures where pointers are
       even larger the size of SDL_UserEvent will dominate as being 3 pointers.
    */
    padding:         [128]u8;
}

#assert(size_of(SDL_Event) == 128);

SDL_EventAction :: enum u32
{
    SDL_ADDEVENT;
    SDL_PEEKEVENT;
    SDL_GETEVENT;
}

SDL_PumpEvents         :: () #foreign SDL3;
SDL_PeepEvents         :: (events: *SDL_Event, num_events: s32, action: SDL_EventAction, min_type: u32, max_type: u32) -> s32 #foreign SDL3;
SDL_HasEvent           :: (type: u32) -> bool #foreign SDL3;
SDL_HasEvents          :: (min_type: u32, max_type: u32) -> bool #foreign SDL3;
SDL_FlushEvent         :: (type: u32) #foreign SDL3;
SDL_FlushEvents        :: (min_type: u32, max_type: u32) #foreign SDL3;
SDL_PollEvent          :: (event: *SDL_Event) -> bool #foreign SDL3;
SDL_WaitEvent          :: (event: *SDL_Event) -> bool #foreign SDL3;
SDL_WaitEventTimeout   :: (event: *SDL_Event, timeout_ms: s32) -> bool #foreign SDL3;
SDL_PushEvent          :: (event: *SDL_Event) -> bool #foreign SDL3;

SDL_EventFilter :: #type (user_data: *void, event: *SDL_Event) -> bool;

SDL_SetEventFilter     :: (filter: SDL_EventFilter, user_data: *void) #foreign SDL3;
SDL_GetEventFilter     :: (filter: *SDL_EventFilter, user_data: **void) -> bool #foreign SDL3;
SDL_AddEventWatch      :: (filter: SDL_EventFilter, user_data: *void) -> bool #foreign SDL3;
SDL_RemoveEventWatch   :: (filter: SDL_EventFilter, user_data: *void) #foreign SDL3;
SDL_FilterEvents       :: (filter: SDL_EventFilter, user_data: *void) #foreign SDL3;
SDL_SetEventEnabled    :: (type: u32, enabled: bool) #foreign SDL3;
SDL_EventEnabled       :: (type: u32) -> bool #foreign SDL3;
SDL_RegisterEvents     :: (num_events: s32) -> u32 #foreign SDL3;
SDL_GetWindowFromEvent :: (event: *SDL_Event) -> SDL_Window #foreign SDL3;
