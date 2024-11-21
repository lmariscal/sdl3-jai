SDL_KeyboardID :: u32;


SDL_HasKeyboard                  :: () -> bool                                                          #foreign SDL3;
SDL_GetKeyboards                 :: (count: *s32) -> *SDL_KeyboardID                                    #foreign SDL3;
SDL_GetKeyboardNameForID         :: (instance_id: SDL_KeyboardID) -> *u8                                #foreign SDL3;
SDL_GetKeyboardFocus             :: () -> *SDL_Window                                                   #foreign SDL3;
SDL_GetKeyboardState             :: (num_keys: *s32) -> *bool                                           #foreign SDL3;
SDL_ResetKeyboard                :: ()                                                                  #foreign SDL3;
SDL_GetModState                  :: () -> SDL_Keymod                                                    #foreign SDL3;
SDL_SetModState                  :: (mod_state: SDL_Keymod)                                             #foreign SDL3;
SDL_GetKeyFromScancode           :: (scancode: SDL_Scancode, mod_state: SDL_Keymod,
                                     key_event: bool) -> SDL_Keycode                                    #foreign SDL3;
SDL_GetScancodeFromKey           :: (key: SDL_Keycode, mod_state: *SDL_Keymod) -> SDL_Scancode          #foreign SDL3;
SDL_SetScancodeName              :: (scancode: SDL_Scancode, name: *u8) -> bool                         #foreign SDL3;
SDL_GetScancodeName              :: (scancode: SDL_Scancode) -> *u8                                     #foreign SDL3;
SDL_GetScancodeFromName          :: (name: *u8) -> SDL_Scancode                                         #foreign SDL3;
SDL_GetKeyName                   :: (key: SDL_Keycode) -> *u8                                           #foreign SDL3;
SDL_GetKeyFromName               :: (name: *u8) -> SDL_Keycode                                          #foreign SDL3;
SDL_StartTextInput               :: (window: *SDL_Window) -> bool                                       #foreign SDL3;

SDL_TextInputType :: enum u32
{
    SDL_TEXTINPUT_TYPE_TEXT;
    SDL_TEXTINPUT_TYPE_TEXT_NAME;
    SDL_TEXTINPUT_TYPE_TEXT_EMAIL;
    SDL_TEXTINPUT_TYPE_TEXT_USERNAME;
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN;
    SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE;
    SDL_TEXTINPUT_TYPE_NUMBER;
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN;
    SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE;
}

SDL_Capitalization :: enum u32
{
    SDL_CAPITALIZE_NONE;
    SDL_CAPITALIZE_SENTENCES;
    SDL_CAPITALIZE_WORDS;
    SDL_CAPITALIZE_LETTERS;
}


SDL_StartTextInputWithProperties :: (window: *SDL_Window, props: SDL_PropertiesID) -> bool              #foreign SDL3;


SDL_PROP_TEXTINPUT_TYPE_NUMBER                  :: "SDL.textinput.type";
SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER        :: "SDL.textinput.capitalization";
SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN          :: "SDL.textinput.autocorrect";
SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN            :: "SDL.textinput.multiline";
SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER     :: "SDL.textinput.android.inputtype";


SDL_TextInputActive              :: (window: *SDL_Window) -> bool                                       #foreign SDL3;
SDL_StopTextInput                :: (window: *SDL_Window) -> bool                                       #foreign SDL3;
SDL_ClearComposition             :: (window: *SDL_Window) -> bool                                       #foreign SDL3;
SDL_SetTextInputArea             :: (window: *SDL_Window, rect: *SDL_Rect, cursor: s32) -> bool         #foreign SDL3;
SDL_GetTextInputArea             :: (window: *SDL_Window, rect: *SDL_Rect, cursor: *s32) -> bool        #foreign SDL3;
SDL_HasScreenKeyboardSupport     :: () -> bool                                                          #foreign SDL3;
SDL_ScreenKeyboardShown          :: (window: *SDL_Window) -> bool                                       #foreign SDL3;
