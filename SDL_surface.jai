SDL_SurfaceFlags :: u32;

SDL_SURFACE_PREALLOCATED :: 0x00000001;
SDL_SURFACE_LOCK_NEEDED  :: 0x00000002;
SDL_SURFACE_LOCKED       :: 0x00000004;
SDL_SURFACE_SIMD_ALIGNED :: 0x00000008;

// SDL_MUSTLOCK :: (s: *SDL_Surface) -> bool {return (s.flags & SDL_SURFACE_LOCK_NEEDED) == SDL_SURFACE_LOCK_NEEDED;}

SDL_ScaleMode :: enum u32
{
    SDL_SCALEMODE_NEAREST;
    SDL_SCALEMODE_LINEAR;
}

SDL_FlipMode :: enum u32
{
    SDL_FLIP_NONE;
    SDL_FLIP_HORIZONTAL;
    SDL_FLIP_VERTICAL;
}

// SDL_Surface :: struct
// {
//     flags:    SDL_SurfaceFlags;
//     format:   SDL_PixelFormat;
//     w:        s32;
//     h:        s32;
//     pitch:    s32;
//     pixels:   *void;

//     refcount: s32;
//     reserved: *void;
// }

SDL_Surface :: void;


SDL_CreateSurface                :: (width: s32, height: s32, format: SDL_PixelFormat) -> *SDL_Surface  #foreign SDL3;
SDL_CreateSurfaceFrom            :: (width: s32, height: s32, format: SDL_PixelFormat,
                                     pixels: *void, pitch: s32) -> *SDL_Surface                         #foreign SDL3;
SDL_DestroySurface               :: (surface: *SDL_Surface)                                             #foreign SDL3;
SDL_GetSurfaceProperties         :: (surface: *SDL_Surface) -> SDL_PropertiesID                         #foreign SDL3;


SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT              :: "SDL.surface.SDR_white_point";
SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT                 :: "SDL.surface.HDR_headroom";
SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING            :: "SDL.surface.tonemap";

SDL_SetSurfaceColorspace         :: (surface: *SDL_Surface, colorspace: SDL_Colorspace) -> bool         #foreign SDL3;
SDL_GetSurfaceColorspace         :: (surface: *SDL_Surface) -> SDL_Colorspace                           #foreign SDL3;
SDL_CreateSurfacePalette         :: (surface: *SDL_Surface) -> *SDL_Palette                             #foreign SDL3;
SDL_SetSurfacePalette            :: (surface: *SDL_Surface, palette: *SDL_Palette) -> bool              #foreign SDL3;
SDL_GetSurfacePalette            :: (surface: *SDL_Surface) -> *SDL_Palette                             #foreign SDL3;
SDL_AddSurfaceAlternateImage     :: (surface: *SDL_Surface, image: *SDL_Surface) -> bool                #foreign SDL3;
SDL_SurfaceHasAlternateImages    :: (surface: *SDL_Surface) -> bool                                     #foreign SDL3;
SDL_GetSurfaceImages             :: (surface: *SDL_Surface, count: *s32) -> **SDL_Surface               #foreign SDL3;
SDL_RemoveSurfaceAlternateImages :: (surface: *SDL_Surface)                                             #foreign SDL3;
SDL_LockSurface                  :: (surface: *SDL_Surface) -> bool                                     #foreign SDL3;
SDL_UnlockSurface                :: (surface: *SDL_Surface)                                             #foreign SDL3;
SDL_LoadBMP_IO                   :: (src: *SDL_IOStream, close_io: bool) -> *SDL_Surface                #foreign SDL3;
SDL_LoadBMP                      :: (file: *u8) -> *SDL_Surface                                         #foreign SDL3;
SDL_SaveBMP_IO                   :: (surface: *SDL_Surface, dst: *SDL_IOStream, close_io: bool) -> bool #foreign SDL3;
SDL_SaveBMP                      :: (surface: *SDL_Surface, file: *u8) -> bool                          #foreign SDL3;
SDL_SetSurfaceRLE                :: (surface: *SDL_Surface, enabled: bool) -> bool                      #foreign SDL3;
SDL_SurfaceHasRLE                :: (surface: *SDL_Surface) -> bool                                     #foreign SDL3;
SDL_SetSurfaceColorKey           :: (surface: *SDL_Surface, enabled: bool, key: u32) -> bool            #foreign SDL3;
SDL_SurfaceHasColorKey           :: (surface: *SDL_Surface) -> bool                                     #foreign SDL3;
SDL_GetSurfaceColorKey           :: (surface: *SDL_Surface, key: *u32) -> bool                          #foreign SDL3;
SDL_SetSurfaceColorMod           :: (surface: *SDL_Surface, r: u8, g: u8, b: u8) -> bool                #foreign SDL3;
SDL_GetSurfaceColorMod           :: (surface: *SDL_Surface, r: *u8, g: *u8, b: *u8) -> bool             #foreign SDL3;
SDL_SetSurfaceAlphaMod           :: (surface: *SDL_Surface, alpha: u8) -> bool                          #foreign SDL3;
SDL_GetSurfaceAlphaMod           :: (surface: *SDL_Surface, alpha: *u8) -> bool                         #foreign SDL3;
SDL_SetSurfaceBlendMode          :: (surface: *SDL_Surface, blend_mode: SDL_BlendMode) -> bool          #foreign SDL3;
SDL_GetSurfaceBlendMode          :: (surface: *SDL_Surface, blend_mode: *SDL_BlendMode) -> bool         #foreign SDL3;
SDL_SetSurfaceClipRect           :: (surface: *SDL_Surface, rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_GetSurfaceClipRect           :: (surface: *SDL_Surface, rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_FlipSurface                  :: (surface: *SDL_Surface, flip: SDL_FlipMode) -> bool                 #foreign SDL3;
SDL_DuplicateSurface             :: (surface: *SDL_Surface) -> *SDL_Surface                             #foreign SDL3;
SDL_ScaleSurface                 :: (surface: *SDL_Surface, width: s32, height: s32,
                                     scale_mode: SDL_ScaleMode) -> *SDL_Surface                         #foreign SDL3;
SDL_ConvertSurface               :: (surface: *SDL_Surface, format: SDL_PixelFormat) -> *SDL_Surface    #foreign SDL3;
SDL_ConvertSurfaceAndColorspace  :: (surface: *SDL_Surface, format: SDL_PixelFormat,
                                     palette: *SDL_Palette, colorspace: SDL_Colorspace,
                                     props: SDL_PropertiesID) -> *SDL_Surface                           #foreign SDL3;
SDL_ConvertPixels                :: (width: s32, height: s32,
                                     src_format: SDL_PixelFormat, src: *void, src_pitch: s32,
                                     dst_format: SDL_PixelFormat, dst: *void, dst_pitch: s32) -> bool   #foreign SDL3;
SDL_ConvertPixelsAndColorspace   :: (width: s32, height: s32,
                                     src_format: SDL_PixelFormat, src_colorspace: SDL_Colorspace,
                                     src_properties: SDL_PropertiesID, src: *void, src_pitch: s32,
                                  dst_format: SDL_PixelFormat, dst_colorspace: SDL_Colorspace,
                                  dst_properties: SDL_PropertiesID, dst: *void, dst_pitch: s32) -> bool #foreign SDL3;
SDL_PremultiplyAlpha             :: (width: s32, height: s32,
                                     src_format: SDL_PixelFormat, src: *void, src_pitch: s32,
                                     dst_format: SDL_PixelFormat, dst: *void, dst_pitch: s32,
                                     linear: bool) -> bool                                              #foreign SDL3;
SDL_PremultiplySurfaceAlpha      :: (surface: *SDL_Surface, linear: bool) -> bool                       #foreign SDL3;
SDL_ClearSurface                 :: (surface: *SDL_Surface,
                                     r: float32, g: float32, b: float32, a: float32) -> bool            #foreign SDL3;
SDL_FillSurfaceRect              :: (dst: *SDL_Surface, rect: *SDL_Rect, color: u32) -> bool            #foreign SDL3;
SDL_FillSurfaceRects             :: (dst: *SDL_Surface, rects: *SDL_Rect, color: u32) -> bool           #foreign SDL3;
SDL_BlitSurface                  :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_BlitSurfaceUnchecked         :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_BlitSurfaceScaled            :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect,
                                     scale_mode: SDL_ScaleMode) -> bool                                 #foreign SDL3;
SDL_BlitSurfaceUncheckedScaled   :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect,
                                     scale_mode: SDL_ScaleMode) -> bool                                 #foreign SDL3;
SDL_BlitSurfaceTiled             :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_BlitSurfaceTiledWithScale    :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     scale: float32, scale_mode: SDL_ScaleMode,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_BlitSurface9Grid             :: (src: *SDL_Surface, src_rect: *SDL_Rect,
                                     left_width: s32, right_width: s32,
                                     top_height: s32, bottom_height: s32,
                                     scale: float32, scale_mode: SDL_ScaleMode,
                                     dst: *SDL_Surface, dst_rect: *SDL_Rect) -> bool                    #foreign SDL3;
SDL_MapSurfaceRGB                :: (surface: *SDL_Surface, r: u8, g: u8, b: u8) -> u32                 #foreign SDL3;
SDL_MapSurfaceRGBA               :: (surface: *SDL_Surface, r: u8, g: u8, b: u8, a: u8) -> u32          #foreign SDL3;
SDL_ReadSurfacePixel             :: (surface: *SDL_Surface, x: s32, y: s32,
                                     r: *u8, g: *u8, b: *u8, a: *u8) -> bool                            #foreign SDL3;
SDL_ReadSurfacePixelFloat        :: (surface: *SDL_Surface, x: s32, y: s32,
                                     r: *float32, g: *float32, b: *float32, a: *float32) -> bool        #foreign SDL3;
SDL_WriteSurfacePixel            :: (surface: *SDL_Surface, x: s32, y: s32,
                                     r: u8, g: u8, b: u8, a: u8) -> bool                                #foreign SDL3;
SDL_WriteSurfacePixelFloat       :: (surface: *SDL_Surface, x: s32, y: s32,
                                     r: float32, g: float32, b: float32, a: float32) -> bool            #foreign SDL3;
