SDL_INIT_FLAGS :: enum_flags u32
{
    SDL_INIT_AUDIO    :: 0x00000010;
    SDL_INIT_VIDEO    :: 0x00000020;
    SDL_INIT_JOYSTICK :: 0x00000200;
    SDL_INIT_HAPTIC   :: 0x00001000;
    SDL_INIT_GAMEPAD  :: 0x00002000;
    SDL_INIT_EVENTS   :: 0x00004000;
    SDL_INIT_SENSOR   :: 0x00008000;
    SDL_INIT_CAMERA   :: 0x00010000;
}

SDL_AppResult :: enum u32
{
    SDL_APP_CONTINUE;
    SDL_APP_SUCCESS;
    SDL_APP_FAILURE;
}

SDL_AppInit_func    :: #type (appstate: **void, argc: s32, argv: **u8) -> SDL_AppResult;
SDL_AppIterate_func :: #type (appstate: *void) -> SDL_AppResult;
SDL_AppEvent_func   :: #type (appstate: *void, event: *SDL_Event) -> SDL_AppResult;
SDL_AppQuit_func    :: #type (appstate: *void, result: SDL_AppResult);

SDL_Init          :: (flags: SDL_INIT_FLAGS) -> bool           #foreign SDL3;
SDL_InitSubSystem :: (flags: SDL_INIT_FLAGS) -> bool           #foreign SDL3;
SDL_QuitSubSystem :: (flags: SDL_INIT_FLAGS)                   #foreign SDL3;
SDL_WasInit       :: (flags: SDL_INIT_FLAGS) -> SDL_INIT_FLAGS #foreign SDL3;
SDL_Quit          :: ()                                        #foreign SDL3;

SDL_SetAppMetadata         :: (app_name: *u8, app_version: *u8, app_id: *u8) -> bool #foreign SDL3;
SDL_SetAppMetadataProperty :: (name: *u8, value: *u8) -> bool                        #foreign SDL3;
SDL_GetAppMetadataProperty :: (name: *u8) -> *u8                                     #foreign SDL3;

SDL_PROP_APP_METADATA_NAME_STRING       :: "SDL.app.metadata.name";
SDL_PROP_APP_METADATA_VERSION_STRING    :: "SDL.app.metadata.version";
SDL_PROP_APP_METADATA_IDENTIFIER_STRING :: "SDL.app.metadata.identifier";
SDL_PROP_APP_METADATA_CREATOR_STRING    :: "SDL.app.metadata.creator";
SDL_PROP_APP_METADATA_COPYRIGHT_STRING  :: "SDL.app.metadata.copyright";
SDL_PROP_APP_METADATA_URL_STRING        :: "SDL.app.metadata.url";
SDL_PROP_APP_METADATA_TYPE_STRING       :: "SDL.app.metadata.type";
