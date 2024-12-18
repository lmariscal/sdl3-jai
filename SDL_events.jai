Event_Type :: enum u32
{
    EVENT_FIRST                          :: 0;

    // Application events
    EVENT_QUIT                           :: 0x100;

    // Android/iOS events
    EVENT_TERMINATING;
    EVENT_LOW_MEMORY;
    EVENT_WILL_ENTER_BACKGROUND;
    EVENT_DID_ENTER_BACKGROUND;
    EVENT_WILL_ENTER_FOREGROUND;
    EVENT_DID_ENTER_FOREGROUND;
    EVENT_LOCALE_CHANGED;
    EVENT_SYSTEM_THEME_CHANGED;

    // Display events
    EVENT_DISPLAY_ORIENTATION            :: 0x151;
    EVENT_DISPLAY_ADDED;
    EVENT_DISPLAY_REMOVED;
    EVENT_DISPLAY_MOVED;
    EVENT_DISPLAY_DESKTOP_MODE_CHANGED;
    EVENT_DISPLAY_CURRENT_MODE_CHANGED;
    EVENT_DISPLAY_CONTENT_SCALE_CHANGED;
    EVENT_DISPLAY_FIRST :: EVENT_DISPLAY_ORIENTATION;
    EVENT_DISPLAY_LAST :: EVENT_DISPLAY_CONTENT_SCALE_CHANGED;

    // Window events
    EVENT_WINDOW_SHOWN                   :: 0x202;
    EVENT_WINDOW_HIDDEN;
    EVENT_WINDOW_EXPOSED;
    EVENT_WINDOW_MOVED;
    EVENT_WINDOW_RESIZED;
    EVENT_WINDOW_PIXEL_SIZE_CHANGED;
    EVENT_WINDOW_METAL_VIEW_RESIZED;
    EVENT_WINDOW_MINIMIZED;
    EVENT_WINDOW_MAXIMIZED;
    EVENT_WINDOW_RESTORED;
    EVENT_WINDOW_MOUSE_ENTER;
    EVENT_WINDOW_MOUSE_LEAVE;
    EVENT_WINDOW_FOCUS_GAINED;
    EVENT_WINDOW_FOCUS_LOST;
    EVENT_WINDOW_CLOSE_REQUESTED;
    EVENT_WINDOW_HIT_TEST;
    EVENT_WINDOW_ICCPROF_CHANGED;
    EVENT_WINDOW_DISPLAY_CHANGED;
    EVENT_WINDOW_DISPLAY_SCALE_CHANGED;
    EVENT_WINDOW_SAFE_AREA_CHANGED;
    EVENT_WINDOW_OCCLUDED;
    EVENT_WINDOW_ENTER_FULLSCREEN;
    EVENT_WINDOW_LEAVE_FULLSCREEN;
    EVENT_WINDOW_DESTROYED;
    EVENT_WINDOW_HDR_STATE_CHANGED;
    EVENT_WINDOW_FIRST :: EVENT_WINDOW_SHOWN;
    EVENT_WINDOW_LAST :: EVENT_WINDOW_HDR_STATE_CHANGED;

    // Keyboard events
    EVENT_KEY_DOWN                       :: 0x300;
    EVENT_KEY_UP;
    EVENT_TEXT_EDITING;
    EVENT_TEXT_INPUT;
    EVENT_KEYMAP_CHANGED;
    EVENT_KEYBOARD_ADDED;
    EVENT_KEYBOARD_REMOVED;
    EVENT_TEXT_EDITING_CANDIDATES;

    // Mouse events
    EVENT_MOUSE_MOTION                   :: 0x400;
    EVENT_MOUSE_BUTTON_DOWN;
    EVENT_MOUSE_BUTTON_UP;
    EVENT_MOUSE_WHEEL;
    EVENT_MOUSE_ADDED;
    EVENT_MOUSE_REMOVED;

    // Joystick events
    EVENT_JOYSTICK_AXIS_MOTION           :: 0x600;
    EVENT_JOYSTICK_BALL_MOTION;
    EVENT_JOYSTICK_HAT_MOTION;
    EVENT_JOYSTICK_BUTTON_DOWN;
    EVENT_JOYSTICK_BUTTON_UP;
    EVENT_JOYSTICK_ADDED;
    EVENT_JOYSTICK_REMOVED;
    EVENT_JOYSTICK_BATTERY_UPDATED;
    EVENT_JOYSTICK_UPDATE_COMPLETE;

    // Gamepad events
    EVENT_GAMEPAD_AXIS_MOTION            :: 0x650;
    EVENT_GAMEPAD_BUTTON_DOWN;
    EVENT_GAMEPAD_BUTTON_UP;
    EVENT_GAMEPAD_ADDED;
    EVENT_GAMEPAD_REMOVED;
    EVENT_GAMEPAD_REMAPPED;
    EVENT_GAMEPAD_TOUCHPAD_DOWN;
    EVENT_GAMEPAD_TOUCHPAD_MOTION;
    EVENT_GAMEPAD_TOUCHPAD_UP;
    EVENT_GAMEPAD_SENSOR_UPDATE;
    EVENT_GAMEPAD_UPDATE_COMPLETE;
    EVENT_GAMEPAD_STEAM_HANDLE_UPDATED;

    // Touch events
    EVENT_FINGER_DOWN                    :: 0x700;
    EVENT_FINGER_UP;
    EVENT_FINGER_MOTION;

    // Clipboard events
    EVENT_CLIPBOARD_UPDATE               :: 0x900;

    // Drag and drop events
    EVENT_DROP_FILE                      :: 0x1000;
    EVENT_DROP_TEXT;
    EVENT_DROP_BEGIN;
    EVENT_DROP_COMPLETE;
    EVENT_DROP_POSITION;

    // Audio hotplug events
    EVENT_AUDIO_DEVICE_ADDED             :: 0x1100;
    EVENT_AUDIO_DEVICE_REMOVED;
    EVENT_AUDIO_DEVICE_FORMAT_CHANGED;

    // Sensor events
    EVENT_SENSOR_UPDATE                  :: 0x1200;

    // Pressure-sensitive pen events
    EVENT_PEN_PROXIMITY_IN               :: 0x1300;
    EVENT_PEN_PROXIMITY_OUT;
    EVENT_PEN_DOWN;
    EVENT_PEN_UP;
    EVENT_PEN_BUTTON_DOWN;
    EVENT_PEN_BUTTON_UP;
    EVENT_PEN_MOTION;
    EVENT_PEN_AXIS;

    // Camera hotplug events
    EVENT_CAMERA_DEVICE_ADDED            :: 0x1400;
    EVENT_CAMERA_DEVICE_REMOVED;
    EVENT_CAMERA_DEVICE_APPROVED;
    EVENT_CAMERA_DEVICE_DENIED;

    // Render events
    EVENT_RENDER_TARGETS_RESET           :: 0x2000;
    EVENT_RENDER_DEVICE_RESET;
    EVENT_RENDER_DEVICE_LOST;

    // Reserved events for private platforms
    EVENT_PRIVATE0                       :: 0x4000;
    EVENT_PRIVATE1;
    EVENT_PRIVATE2;
    EVENT_PRIVATE3;

    // Internal events
    EVENT_POLL_SENTINEL                  :: 0x7F00;

    // Events EVENT_USER through EVENT_LAST are for your use, and should be allocated with RegisterEvents()
    EVENT_USER                           :: 0x8000;

    // This last event is only for bounding internal arrays
    EVENT_LAST                           :: 0xFFFF;

    // This just makes sure the enum is the size of Uint32
    EVENT_ENUM_PADDING                   :: 0x7FFFFFFF;
}

Common_Event :: struct
{
    type:      u32;
    reserved:  u32;
    timestamp: u64;
}

Display_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    displayID: Display_ID;
    data1:     s32;
    data2:     s32;
}

Window_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    data1:     s32;
    data2:     s32;
}

Keyboard_Device_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Keyboard_ID;
}

Keyboard_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Keyboard_ID;
    scancode:  Scancode;
    key:       Keycode;
    mod:       Keymod;
    raw:       u16;
    down:      bool;
    repeat:    bool;
}

Text_Editing_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    text:      *u8;
    start:     s32;
    length:    s32;
}

Text_Editing_Candidates_Event :: struct
{
    type:               Event_Type;
    reserved:           u32;
    timestamp:          u64;
    windowID:           Window_ID;
    candidates:         **u8;
    num_candidates:     s32;
    selected_candidate: s32;
    horizontal:         bool;
    padding1:           u8;
    padding2:           u8;
    padding3:           u8;
}

Text_Input_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    text:      *u8;
}

Mouse_Device_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Mouse_ID;
}

Mouse_Motion_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Mouse_ID;
    state:     Mouse_Button_Flags ;
    x:         float32;
    y:         float32;
    xrel:      float32;
    yrel:      float32;
}

Mouse_Button_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Mouse_ID;
    button:    u8;
    down:      bool;
    clicks:    u8;
    padding:   u8;
    x:         float32;
    y:         float32;
}

Mouse_Wheel_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Mouse_ID;
    x:         float32;
    y:         float32;
    direction: Mouse_Wheel_Direction;
    mouse_x:   float32;
    mouse_y:   float32;
}

Joy_Axis_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    axis:      u8;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
    value:     s16;
    padding4:  u16;
}

Joy_Ball_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    ball:      u8;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
    xrel:      s16;
    yrel:      s16;
}

Joy_Hat_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    hat:       u8;
    value:     u8;
    padding1:  u8;
    padding2:  u8;
}

Joy_Button_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    button:    u8;
    down:      bool;
    padding1:  u8;
    padding2:  u8;
}

Joy_Device_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
}

Joy_Battery_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    state:     Power_State;
    percent:   s32;
}

Gamepad_Axis_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    axis:      u8;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
    value:     s16;
    padding4:  u16;
}

Gamepad_Button_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    button:    u8;
    down:      bool;
    padding1:  u8;
    padding2:  u8;
}

Gamepad_Device_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
}

Gamepad_Touchpad_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Joystick_ID;
    touchpad:  s32;
    finger:    s32;
    x:         float32;
    y:         float32;
    pressure:  float32;
}

Gamepad_Sensor_Event :: struct
{
    type:             Event_Type;
    reserved:         u32;
    timestamp:        u64;
    which:            Joystick_ID;
    sensor:           s32;
    data:             [3] float32;
    sensor_timestamp: u64;
}

Audio_Device_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Audio_Device_ID;
    recording: bool;
    padding1:  u8;
    padding2:  u8;
    padding3:  u8;
}

Camera_Device_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    which:     Camera_ID;
}

Touch_Finger_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    touchID:   Touch_ID;
    fingerID:  Finger_ID;
    x:         float32;
    y:         float32;
    dx:        float32;
    dy:        float32;
    pressure:  float32;
    windowID:  Window_ID;
}

Pen_Proximity_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Pen_ID;
}

Pen_Motion_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Pen_ID;
    pen_state: Pen_Input_Flags ;
    x:         float32;
    y:         float32;
}

Pen_Touch_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Pen_ID;
    pen_state: Pen_Input_Flags ;
    x:         float32;
    y:         float32;
    eraser:    bool;
    down:      bool;
}

Pen_Button_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Pen_ID;
    pen_state: Pen_Input_Flags;
    x:         float32;
    y:         float32;
    button:    u8;
    down:      bool;
}

Pen_Axis_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    which:     Pen_ID;
    pen_state: Pen_Input_Flags;
    x:         float32;
    y:         float32;
    axis:      Pen_Axis;
    value:     float32;
}

Drop_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
    windowID:  Window_ID;
    x:         float32;
    y:         float32;
    source:    *u8;
    data:      *u8;
}

Clipboard_Event :: struct
{
    type:         Event_Type;
    reserved:     u32;
    timestamp:    u64;
    owner:        bool;
    n_mime_types: s32;
    mime_types:   **u8;
}

Sensor_Event :: struct
{
    type:             Event_Type;
    reserved:         u32;
    timestamp:        u64;
    which:            Sensor_ID;
    data:             [6] float32;
    sensor_timestamp: u64;
}

Quit_Event :: struct
{
    type:      Event_Type;
    reserved:  u32;
    timestamp: u64;
}

User_Event :: struct
{
    type:      u32;
    reserved:  u32;
    windowID:  Window_ID;
    code:      s32;
    data1:     *void;
    data2:     *void;
}

Event :: union
{
    type:            Event_Type;
    common:          Common_Event;
    display:         Display_Event;
    window:          Window_Event;
    kdevice:         Keyboard_Device_Event;
    key:             Keyboard_Event;
    edit:            Text_Editing_Event;
    edit_candidates: Text_Editing_Candidates_Event;
    text:            Text_Input_Event;
    mdevice:         Mouse_Device_Event;
    motion:          Mouse_Motion_Event;
    button:          Mouse_Button_Event;
    wheel:           Mouse_Wheel_Event;
    jdevice:         Joy_Device_Event;
    jaxis:           Joy_Axis_Event;
    jball:           Joy_Ball_Event;
    jhat:            Joy_Hat_Event;
    jbutton:         Joy_Button_Event;
    jbattery:        Joy_Battery_Event;
    gdevice:         Gamepad_Device_Event;
    gaxis:           Gamepad_Axis_Event;
    gbutton:         Gamepad_Button_Event;
    gtouchpad:       Gamepad_Touchpad_Event;
    gsensor:         Gamepad_Sensor_Event;
    adevice:         Audio_Device_Event;
    cdevice:         Camera_Device_Event;
    sensor:          Sensor_Event;
    quit:            Quit_Event;
    user:            User_Event;
    tfinger:         Touch_Finger_Event;
    pproximity:      Pen_Proximity_Event;
    ptouch:          Pen_Touch_Event;
    pmotion:         Pen_Motion_Event;
    pbutton:         Pen_Button_Event;
    paxis:           Pen_Axis_Event;
    drop:            Drop_Event;
    clipboard:       Clipboard_Event;

    /* This is necessary for ABI compatibility between Visual C++ and GCC.
       Visual C++ will respect the push pack pragma and use 52 bytes (size of
       TextEditingEvent, the largest structure for 32-bit and 64-bit
       architectures) for this union, and GCC will use the alignment of the
       largest datatype within the union, which is 8 bytes on 64-bit
       architectures.

       So... we'll add padding to force the size to be the same for both.

       On architectures where pointers are 16 bytes, this needs rounding up to
       the next multiple of 16, 64, and on architectures where pointers are
       even larger the size of UserEvent will dominate as being 3 pointers.
    */
    padding:         [128] u8;
}

#assert(size_of(Event) == 128);

Event_Action :: enum u32
{
    ADDEVENT;
    PEEKEVENT;
    GETEVENT;
}

Event_Filter :: #type (user_data: *void, event: *Event) -> bool;

pump_events           :: ()                                                                                           #foreign SDL3 "SDL_PumpEvents";
peep_events           :: (events: *Event, num_events: s32, action: Event_Action, min_type: u32, max_type: u32) -> s32 #foreign SDL3 "SDL_PeepEvents";
has_event             :: (type: u32) -> bool                                                                          #foreign SDL3 "SDL_HasEvent";
has_events            :: (min_type: u32, max_type: u32) -> bool                                                       #foreign SDL3 "SDL_HasEvents";
flush_event           :: (type: u32)                                                                                  #foreign SDL3 "SDL_FlushEvent";
flush_events          :: (min_type: u32, max_type: u32)                                                               #foreign SDL3 "SDL_FlushEvents";
poll_event            :: (event: *Event) -> bool                                                                      #foreign SDL3 "SDL_PollEvent";
wait_event            :: (event: *Event) -> bool                                                                      #foreign SDL3 "SDL_WaitEvent";
wait_event_timeout    :: (event: *Event, timeout_ms: s32) -> bool                                                     #foreign SDL3 "SDL_WaitEventTimeout";
push_event            :: (event: *Event) -> bool                                                                      #foreign SDL3 "SDL_PushEvent";
set_event_filter      :: (filter: Event_Filter, user_data: *void)                                                     #foreign SDL3 "SDL_SetEventFilter";
get_event_filter      :: (filter: *Event_Filter, user_data: **void) -> bool                                           #foreign SDL3 "SDL_GetEventFilter";
add_event_watch       :: (filter: Event_Filter, user_data: *void) -> bool                                             #foreign SDL3 "SDL_AddEventWatch";
remove_event_watch    :: (filter: Event_Filter, user_data: *void)                                                     #foreign SDL3 "SDL_RemoveEventWatch";
filter_events         :: (filter: Event_Filter, user_data: *void)                                                     #foreign SDL3 "SDL_FilterEvents";
set_event_enabled     :: (type: u32, enabled: bool)                                                                   #foreign SDL3 "SDL_SetEventEnabled";
event_enabled         :: (type: u32) -> bool                                                                          #foreign SDL3 "SDL_EventEnabled";
register_events       :: (num_events: s32) -> u32                                                                     #foreign SDL3 "SDL_RegisterEvents";
get_window_from_event :: (event: *Event) -> Window                                                                    #foreign SDL3 "SDL_GetWindowFromEvent";
