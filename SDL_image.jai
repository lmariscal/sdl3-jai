IMG_InitFlags   :: u32;

IMG_INIT_JPG  :u32: 0x00000001;
IMG_INIT_PNG  :u32: 0x00000002;
IMG_INIT_TIF  :u32: 0x00000004;
IMG_INIT_WEBP :u32: 0x00000008;
IMG_INIT_JXL  :u32: 0x00000010;
IMG_INIT_AVIF :u32: 0x00000020;

IMG_Version                  :: () -> s32                                             #foreign SDL3_image;
IMG_Init                     :: (flags: IMG_InitFlags) -> IMG_InitFlags               #foreign SDL3_image;
IMG_Quit                     :: ()                                                    #foreign SDL3_image;
IMG_LoadTyped_IO             :: (src: *SDL_IOStream,
                                 close_io: bool, type: *u8) -> *SDL_Surface           #foreign SDL3_image;
IMG_Load                     :: (file: *u8) -> *SDL_Surface                           #foreign SDL3_image;
IMG_Load_IO                  :: (src: *SDL_IOStream, close_io: bool) -> *SDL_Surface  #foreign SDL3_image;
IMG_LoadTexture              :: (renderer: *SDL_Renderer, file: *u8) -> *SDL_Texture  #foreign SDL3_image;
IMG_LoadTexture_IO           :: (renderer: *SDL_Renderer,
                                 src: *SDL_IOStream, close_io: bool) -> *SDL_Texture  #foreign SDL3_image;
IMG_LoadTextureTyped_IO      :: (renderer: *SDL_Renderer, src: *SDL_IOStream,
                                 close_io: bool, type: *u8) -> *SDL_Texture           #foreign SDL3_image;
IMG_isAVIF                   :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isICO                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isCUR                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isBMP                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isGIF                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isJPG                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isJXL                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isLBM                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isPCX                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isPNG                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isPNM                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isSVG                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isQOI                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isTIF                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isXCF                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isXPM                    :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isXV                     :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_isWEBP                   :: (src: *SDL_IOStream) -> bool                          #foreign SDL3_image;
IMG_LoadAVIF_IO              :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadICO_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadCUR_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadBMP_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadGIF_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadJPG_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadJXL_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadLBM_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadPCX_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadPNG_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadPNM_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadSVG_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadQOI_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadTGA_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadTIF_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadXCF_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadXPM_IO               :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadXV_IO                :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadWEBP_IO              :: (src: *SDL_IOStream) -> *SDL_Surface                  #foreign SDL3_image;
IMG_LoadSizedSVG_IO          :: (src: *SDL_IOStream,
                                 width: s32, height: s32) -> *SDL_Surface             #foreign SDL3_image;
IMG_ReadXPMFromArray         :: (xpm: **u8) -> *SDL_Surface                           #foreign SDL3_image;
IMG_ReadXPMFromArrayToRGB888 :: (xpm: **u8) -> *SDL_Surface                           #foreign SDL3_image;
IMG_SaveAVIF                 :: (surface: *SDL_Surface,
                                 file: *u8, quality: s32) -> bool                     #foreign SDL3_image;
IMG_SaveAVIF_IO              :: (surface: *SDL_Surface, dst: *SDL_IOStream,
                                 close_io: s32, quality: s32) -> bool                 #foreign SDL3_image;
IMG_SavePNG                  :: (surface: *SDL_Surface, file: *u8) -> bool            #foreign SDL3_image;
IMG_SavePNG_IO               :: (surface: *SDL_Surface,
                                 dst: *SDL_IOStream, close_io: s32) -> bool           #foreign SDL3_image;
IMG_SaveJPG                  :: (surface: *SDL_Surface, file: *u8,
                                 quality: s32) -> bool                                #foreign SDL3_image;
IMG_SaveJPG_IO               :: (surface: *SDL_Surface, dst: *SDL_IOStream,
                                 close_io: s32, quality: s32) -> bool                 #foreign SDL3_image;

IMG_Animation :: struct
{
    w, h:   s32;
    count:  s32;
    frames: **SDL_Surface;
    delays: *s32;
}

IMG_LoadAnimation            :: (file: *u8) -> *IMG_Animation                         #foreign SDL3_image;
IMG_LoadAnimation_IO         :: (src: *SDL_IOStream,
                                 close_io: bool) -> *IMG_Animation                    #foreign SDL3_image;
IMG_LoadAnimationTyped_IO    :: (src: *SDL_IOStream, close_io: bool,
                                 type: *u8) -> *IMG_Animation                         #foreign SDL3_image;
IMG_FreeAnimation            :: (anim: *IMG_Animation)                                #foreign SDL3_image;
IMG_LoadGIFAnimation_IO      :: (src: *SDL_IOStream) -> *IMG_Animation                #foreign SDL3_image;
IMG_LoadWEBPAnimation_IO     :: (src: *SDL_IOStream) -> *IMG_Animation                #foreign SDL3_image;
