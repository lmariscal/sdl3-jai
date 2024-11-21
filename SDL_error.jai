SDL_SetError    :: (fmt: *u8, args: ..Any) -> bool      #foreign SDL3;
SDL_SetErrorV   :: (fmt: *u8, args: [..]Any) -> bool    #foreign SDL3;
SDL_OutOfMemory :: () -> bool                           #foreign SDL3;
SDL_GetError    :: () -> *u8                            #foreign SDL3;
SDL_ClearError  :: ()                                   #foreign SDL3;

SDL_Unsupported :: () {SDL_SetError("That operation is not supported");}
SDL_InvalidParamError :: (param: *u8) {SDL_SetError("Parameter '%s' is invalid", param);}
