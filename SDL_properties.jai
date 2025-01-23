Properties_ID :: u32;

Property_Type :: enum u32 {
    INVALID;
    POINTER;
    STRING;
    NUMBER;
    FLOAT;
    BOOLEAN;
}

has_property :: (props: Properties_ID, name: *u8) -> bool                                         #foreign SDL3 "SDL_HasProperty";
get_property_type :: (props: Properties_ID, name: *u8) -> Property_Type                         #foreign SDL3 "SDL_GetPropertyType";
get_pointer_property :: (props: Properties_ID, name: *u8, default_value: *void = null) -> *void    #foreign SDL3 "SDL_GetPointerProperty";
get_string_property :: (props: Properties_ID, name: *u8, default_value: *u8 = null) -> *u8         #foreign SDL3 "SDL_GetStringProperty";
get_number_property :: (props: Properties_ID, name: *u8, default_value: s64 = 0) -> s64            #foreign SDL3 "SDL_GetNumberProperty";
get_float_property :: (props: Properties_ID, name: *u8, default_value: float32 = 0.0) -> float32   #foreign SDL3 "SDL_GetFloatProperty";
get_boolean_property :: (props: Properties_ID, name: *u8, default_value: bool = false) -> bool     #foreign SDL3 "SDL_GetBooleanProperty";
clear_property :: (props: Properties_ID, name: *u8) -> bool                                       #foreign SDL3 "SDL_ClearProperty";
