SDL_PropertiesID :: u32;

SDL_PropertyType :: enum u32 {
    SDL_PROPERTY_TYPE_INVALID;
    SDL_PROPERTY_TYPE_POINTER;
    SDL_PROPERTY_TYPE_STRING;
    SDL_PROPERTY_TYPE_NUMBER;
    SDL_PROPERTY_TYPE_FLOAT;
    SDL_PROPERTY_TYPE_BOOLEAN;
}

SDL_HasProperty :: (props: SDL_PropertiesID, name: *u8) -> bool                                         #foreign SDL3;
SDL_GetPropertyType :: (props: SDL_PropertiesID, name: *u8) -> SDL_PropertyType                         #foreign SDL3;
SDL_GetPointerProperty :: (props: SDL_PropertiesID, name: *u8, default_value: *void = null) -> *void    #foreign SDL3;
SDL_GetStringProperty :: (props: SDL_PropertiesID, name: *u8, default_value: *u8 = null) -> *u8         #foreign SDL3;
SDL_GetNumberProperty :: (props: SDL_PropertiesID, name: *u8, default_value: s64 = 0) -> s64            #foreign SDL3;
SDL_GetFloatProperty :: (props: SDL_PropertiesID, name: *u8, default_value: float32 = 0.0) -> float32   #foreign SDL3;
SDL_GetBooleanProperty :: (props: SDL_PropertiesID, name: *u8, default_value: bool = false) -> bool     #foreign SDL3;
SDL_ClearProperty :: (props: SDL_PropertiesID, name: *u8) -> bool                                       #foreign SDL3;
