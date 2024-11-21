SDL_SOFTWARE_RENDERER ::   "software";

SDL_Vertex :: struct
{
    position:  SDL_FPoint;
    color:     SDL_FColor;
    tex_coord: SDL_FPoint;
}

SDL_TextureAccess :: enum u32
{
    SDL_TEXTUREACCESS_STATIC;
    SDL_TEXTUREACCESS_STREAMING;
    SDL_TEXTUREACCESS_TARGET;
}

SDL_RendererLogicalPresentation :: enum u32
{
    SDL_LOGICAL_PRESENTATION_DISABLED;
    SDL_LOGICAL_PRESENTATION_STRETCH;
    SDL_LOGICAL_PRESENTATION_LETTERBOX;
    SDL_LOGICAL_PRESENTATION_OVERSCAN;
    SDL_LOGICAL_PRESENTATION_INTEGER_SCALE;
}

SDL_Renderer :: void;
SDL_Texture  :: void;

SDL_GetNumRenderDrivers          :: () -> s32                                               #foreign SDL3;
SDL_GetRenderDriver              :: (index: s32) -> *u8                                     #foreign SDL3;
SDL_CreateWindowAndRenderer      :: (title: *u8, width: s32, height: s32,
                                     window_flags: SDL_WindowFlags, window: **SDL_Window,
                                     renderer: **SDL_Renderer) -> bool                      #foreign SDL3;

SDL_CreateRenderer               :: (window: *SDL_Window, name: *u8) -> *SDL_Renderer       #foreign SDL3;
SDL_CreateRendererWithProperties :: (props: SDL_PropertiesID) -> *SDL_Renderer              #foreign SDL3;

SDL_PROP_RENDERER_CREATE_NAME_STRING                                :: "SDL.renderer.create.name";
SDL_PROP_RENDERER_CREATE_WINDOW_POINTER                             :: "SDL.renderer.create.window";
SDL_PROP_RENDERER_CREATE_SURFACE_POINTER                            :: "SDL.renderer.create.surface";
SDL_PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER                   :: "SDL.renderer.create.output_colorspace";
SDL_PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER                       :: "SDL.renderer.create.present_vsync";
SDL_PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER                    :: "SDL.renderer.create.vulkan.instance";
SDL_PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER                      :: "SDL.renderer.create.vulkan.surface";
SDL_PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER             :: "SDL.renderer.create.vulkan.physical_device";
SDL_PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER                      :: "SDL.renderer.create.vulkan.device";
SDL_PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER  :: "SDL.renderer.create.vulkan.graphics_queue_family_index";
SDL_PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER   :: "SDL.renderer.create.vulkan.present_queue_family_index";


SDL_CreateSoftwareRenderer       :: (surface: *SDL_Surface) -> *SDL_Renderer                #foreign SDL3;
SDL_GetRenderer                  :: (window: *SDL_Window) -> *SDL_Renderer                  #foreign SDL3;
SDL_GetRenderWindow              :: (renderer: *SDL_Renderer) -> *SDL_Window                #foreign SDL3;
SDL_GetRendererName              :: (renderer: *SDL_Renderer) -> *u8                        #foreign SDL3;
SDL_GetRendererProperties        :: (renderer: *SDL_Renderer) -> SDL_PropertiesID           #foreign SDL3;

SDL_PROP_RENDERER_NAME_STRING                               :: "SDL.renderer.name";
SDL_PROP_RENDERER_WINDOW_POINTER                            :: "SDL.renderer.window";
SDL_PROP_RENDERER_SURFACE_POINTER                           :: "SDL.renderer.surface";
SDL_PROP_RENDERER_VSYNC_NUMBER                              :: "SDL.renderer.vsync";
SDL_PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER                   :: "SDL.renderer.max_texture_size";
SDL_PROP_RENDERER_TEXTURE_FORMATS_POINTER                   :: "SDL.renderer.texture_formats";
SDL_PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER                  :: "SDL.renderer.output_colorspace";
SDL_PROP_RENDERER_HDR_ENABLED_BOOLEAN                       :: "SDL.renderer.HDR_enabled";
SDL_PROP_RENDERER_SDR_WHITE_POINT_FLOAT                     :: "SDL.renderer.SDR_white_point";
SDL_PROP_RENDERER_HDR_HEADROOM_FLOAT                        :: "SDL.renderer.HDR_headroom";
SDL_PROP_RENDERER_D3D9_DEVICE_POINTER                       :: "SDL.renderer.d3d9.device";
SDL_PROP_RENDERER_D3D11_DEVICE_POINTER                      :: "SDL.renderer.d3d11.device";
SDL_PROP_RENDERER_D3D11_SWAPCHAIN_POINTER                   :: "SDL.renderer.d3d11.swap_chain";
SDL_PROP_RENDERER_D3D12_DEVICE_POINTER                      :: "SDL.renderer.d3d12.device";
SDL_PROP_RENDERER_D3D12_SWAPCHAIN_POINTER                   :: "SDL.renderer.d3d12.swap_chain";
SDL_PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER               :: "SDL.renderer.d3d12.command_queue";
SDL_PROP_RENDERER_VULKAN_INSTANCE_POINTER                   :: "SDL.renderer.vulkan.instance";
SDL_PROP_RENDERER_VULKAN_SURFACE_NUMBER                     :: "SDL.renderer.vulkan.surface";
SDL_PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER            :: "SDL.renderer.vulkan.physical_device";
SDL_PROP_RENDERER_VULKAN_DEVICE_POINTER                     :: "SDL.renderer.vulkan.device";
SDL_PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER :: "SDL.renderer.vulkan.graphics_queue_family_index";
SDL_PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER  :: "SDL.renderer.vulkan.present_queue_family_index";
SDL_PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER       :: "SDL.renderer.vulkan.swapchain_image_count";


SDL_GetRenderOutputSize          :: (renderer: *SDL_Renderer, w: *s32, h: *s32) -> bool     #foreign SDL3;
SDL_GetCurrentRenderOutputSize   :: (renderer: *SDL_Renderer, w: *s32, h: *s32) -> bool     #foreign SDL3;
SDL_CreateTexture                :: (renderer: *SDL_Renderer,
                                     format: SDL_PixelFormat, access: SDL_TextureAccess,
                                     w: s32, h: s32) -> *SDL_Texture                        #foreign SDL3;

SDL_CreateTextureFromSurface     :: (renderer: *SDL_Renderer,
                                     surface: *SDL_Surface) -> *SDL_Texture                 #foreign SDL3;

SDL_CreateTextureWithProperties  :: (renderer: *SDL_Renderer, props: SDL_PropertiesID) -> *SDL_Texture #foreign SDL3;

SDL_GetTextureProperties         :: (texture: *SDL_Texture) -> SDL_PropertiesID             #foreign SDL3;


SDL_PROP_TEXTURE_CREATE_COLORSPACE_NUMBER           :: "SDL.texture.create.colorspace";
SDL_PROP_TEXTURE_CREATE_FORMAT_NUMBER               :: "SDL.texture.create.format";
SDL_PROP_TEXTURE_CREATE_ACCESS_NUMBER               :: "SDL.texture.create.access";
SDL_PROP_TEXTURE_CREATE_WIDTH_NUMBER                :: "SDL.texture.create.width";
SDL_PROP_TEXTURE_CREATE_HEIGHT_NUMBER               :: "SDL.texture.create.height";
SDL_PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT       :: "SDL.texture.create.SDR_white_point";
SDL_PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT          :: "SDL.texture.create.HDR_headroom";
SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER       :: "SDL.texture.create.d3d11.texture";
SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER     :: "SDL.texture.create.d3d11.texture_u";
SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER     :: "SDL.texture.create.d3d11.texture_v";
SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER       :: "SDL.texture.create.d3d12.texture";
SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER     :: "SDL.texture.create.d3d12.texture_u";
SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER     :: "SDL.texture.create.d3d12.texture_v";
SDL_PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER   :: "SDL.texture.create.metal.pixelbuffer";
SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER       :: "SDL.texture.create.opengl.texture";
SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER    :: "SDL.texture.create.opengl.texture_uv";
SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER     :: "SDL.texture.create.opengl.texture_u";
SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER     :: "SDL.texture.create.opengl.texture_v";
SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER    :: "SDL.texture.create.opengles2.texture";
SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER :: "SDL.texture.create.opengles2.texture_uv";
SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER  :: "SDL.texture.create.opengles2.texture_u";
SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER  :: "SDL.texture.create.opengles2.texture_v";
SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER       :: "SDL.texture.create.vulkan.texture";

SDL_PROP_TEXTURE_COLORSPACE_NUMBER                  :: "SDL.texture.colorspace";
SDL_PROP_TEXTURE_FORMAT_NUMBER                      :: "SDL.texture.format";
SDL_PROP_TEXTURE_ACCESS_NUMBER                      :: "SDL.texture.access";
SDL_PROP_TEXTURE_WIDTH_NUMBER                       :: "SDL.texture.width";
SDL_PROP_TEXTURE_HEIGHT_NUMBER                      :: "SDL.texture.height";
SDL_PROP_TEXTURE_SDR_WHITE_POINT_FLOAT              :: "SDL.texture.SDR_white_point";
SDL_PROP_TEXTURE_HDR_HEADROOM_FLOAT                 :: "SDL.texture.HDR_headroom";
SDL_PROP_TEXTURE_D3D11_TEXTURE_POINTER              :: "SDL.texture.d3d11.texture";
SDL_PROP_TEXTURE_D3D11_TEXTURE_U_POINTER            :: "SDL.texture.d3d11.texture_u";
SDL_PROP_TEXTURE_D3D11_TEXTURE_V_POINTER            :: "SDL.texture.d3d11.texture_v";
SDL_PROP_TEXTURE_D3D12_TEXTURE_POINTER              :: "SDL.texture.d3d12.texture";
SDL_PROP_TEXTURE_D3D12_TEXTURE_U_POINTER            :: "SDL.texture.d3d12.texture_u";
SDL_PROP_TEXTURE_D3D12_TEXTURE_V_POINTER            :: "SDL.texture.d3d12.texture_v";
SDL_PROP_TEXTURE_OPENGL_TEXTURE_NUMBER              :: "SDL.texture.opengl.texture";
SDL_PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER           :: "SDL.texture.opengl.texture_uv";
SDL_PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER            :: "SDL.texture.opengl.texture_u";
SDL_PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER            :: "SDL.texture.opengl.texture_v";
SDL_PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER       :: "SDL.texture.opengl.target";
SDL_PROP_TEXTURE_OPENGL_TEX_W_FLOAT                 :: "SDL.texture.opengl.tex_w";
SDL_PROP_TEXTURE_OPENGL_TEX_H_FLOAT                 :: "SDL.texture.opengl.tex_h";
SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER           :: "SDL.texture.opengles2.texture";
SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER        :: "SDL.texture.opengles2.texture_uv";
SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER         :: "SDL.texture.opengles2.texture_u";
SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER         :: "SDL.texture.opengles2.texture_v";
SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER    :: "SDL.texture.opengles2.target";
SDL_PROP_TEXTURE_VULKAN_TEXTURE_NUMBER              :: "SDL.texture.vulkan.texture";


SDL_GetRendererFromTexture       :: (texture: *SDL_Texture) -> *SDL_Renderer                    #foreign SDL3;
SDL_GetTextureSize               :: (texture: *SDL_Texture, w: *float32, h: *float32) -> bool   #foreign SDL3;
SDL_SetTextureColorMod           :: (texture: *SDL_Texture, r: u8, g: u8, b: u8) -> bool        #foreign SDL3;
SDL_SetTextureColorModFloat      :: (texture: *SDL_Texture,
                                     r: float32, g: float32, b: float32) -> bool                #foreign SDL3;

SDL_GetTextureColorMod           :: (texture: *SDL_Texture, r: *u8, g: *u8, b: *u8) -> bool     #foreign SDL3;
SDL_GetTextureColorModFloat      :: (texture: *SDL_Texture,
                                     r: *float32, g: *float32, b: *float32) -> bool             #foreign SDL3;

SDL_SetTextureAlphaMod           :: (texture: *SDL_Texture, alpha: u8) -> bool                  #foreign SDL3;
SDL_SetTextureAlphaModFloat      :: (texture: *SDL_Texture, alpha: float32) -> bool             #foreign SDL3;
SDL_GetTextureAlphaMod           :: (texture: *SDL_Texture, alpha: *u8) -> bool                 #foreign SDL3;
SDL_GetTextureAlphaModFloat      :: (texture: *SDL_Texture, alpha: *float32) -> bool            #foreign SDL3;
SDL_SetTextureBlendMode          :: (texture: *SDL_Texture, blend_mode: SDL_BlendMode) -> bool  #foreign SDL3;
SDL_GetTextureBlendMode          :: (texture: *SDL_Texture, blend_mode: *SDL_BlendMode) -> bool #foreign SDL3;
SDL_SetTextureScaleMode          :: (texture: *SDL_Texture, scale_mode: SDL_ScaleMode) -> bool  #foreign SDL3;
SDL_GetTextureScaleMode          :: (texture: *SDL_Texture, scale_mode: *SDL_ScaleMode) -> bool #foreign SDL3;
SDL_UpdateTexture                :: (texture: *SDL_Texture, rect: *SDL_Rect,
                                     pixels: *void, pitch: s32) -> bool                         #foreign SDL3;

SDL_UpdateYUVTexture             :: (texture: *SDL_Texture, rect: *SDL_Rect,
                                     y_plane: *u8, y_pitch: s32,
                                     u_plane: *u8, u_pitch: s32,
                                     v_plane: *u8, v_pitch: s32) -> bool                        #foreign SDL3;

SDL_UpdateNVTexture              :: (texture: *SDL_Texture, rect: *SDL_Rect,
                                     y_plane: *u8, y_pitch: s32,
                                     uv_plane: *u8, uv_pitch: s32) -> bool                      #foreign SDL3;

SDL_LockTexture                  :: (texture: *SDL_Texture, rect: *SDL_Rect,
                                     pixels: **void, pitch: *s32) -> bool                       #foreign SDL3;

SDL_LockTextureToSurface         :: (texture: *SDL_Texture,
                                     rect: *SDL_Rect,
                                     surface: **SDL_Surface) -> bool                            #foreign SDL3;

SDL_UnlockTexture                :: (texture: *SDL_Texture)                                     #foreign SDL3;
SDL_SetRenderTarget              :: (renderer: *SDL_Renderer, texture: *SDL_Texture) -> bool    #foreign SDL3;
SDL_GetRenderTarget              :: (renderer: *SDL_Renderer) -> *SDL_Texture                   #foreign SDL3;
SDL_SetRenderLogicalPresentation :: (renderer: *SDL_Renderer,
                                     w: s32, h: s32,
                                     mode: SDL_RendererLogicalPresentation) -> bool             #foreign SDL3;


SDL_GetRenderLogicalPresentation :: (renderer: *SDL_Renderer,
                                     w: *s32, h: *s32,
                                     mode: *SDL_RendererLogicalPresentation) -> bool            #foreign SDL3;

SDL_GetRenderLogicalPresentationRect :: (renderer: *SDL_Renderer, rect: *SDL_FRect) -> bool     #foreign SDL3;
SDL_RenderCoordinatesFromWindow  :: (renderer: *SDL_Renderer,
                                     window_x: float32, window_y: float32,
                                     x: *float32, y: *float32) -> bool                          #foreign SDL3;

SDL_RenderCoordinatesToWindow    :: (renderer: *SDL_Renderer,
                                     x: float32, y: float32,
                                     window_x: *float32, window_y: *float32) -> bool            #foreign SDL3;

SDL_ConvertEventToRenderCoordinates :: (renderer: *SDL_Renderer, event: *SDL_Event) -> bool     #foreign SDL3;
SDL_SetRenderViewport            :: (renderer: *SDL_Renderer, rect: *SDL_Rect) -> bool          #foreign SDL3;
SDL_GetRenderViewport            :: (renderer: *SDL_Renderer, rect: *SDL_Rect) -> bool          #foreign SDL3;
SDL_RenderViewportSet            :: (renderer: *SDL_Renderer) -> bool                           #foreign SDL3;
SDL_GetRenderSafeArea            :: (renderer: *SDL_Renderer, rect: *SDL_Rect) -> bool          #foreign SDL3;
SDL_SetRenderClipRect            :: (renderer: *SDL_Renderer, rect: *SDL_Rect) -> bool          #foreign SDL3;
SDL_GetRenderClipRect            :: (renderer: *SDL_Renderer, rect: *SDL_Rect) -> bool          #foreign SDL3;
SDL_RenderClipEnabled            :: (renderer: *SDL_Renderer) -> bool                           #foreign SDL3;
SDL_SetRenderScale               :: (renderer: *SDL_Renderer,
                                     scale_x: float32, scale_y: float32) -> bool                #foreign SDL3;

SDL_GetRenderScale               :: (renderer: *SDL_Renderer,
                                     scale_x: *float32, scale_y: *float32) -> bool              #foreign SDL3;

SDL_SetRenderDrawColor           :: (renderer: *SDL_Renderer,
                                     r: u8, g: u8, b: u8, a: u8) -> bool                        #foreign SDL3;

SDL_SetRenderDrawColorFloat      :: (renderer: *SDL_Renderer,
                                     r: float32, g: float32, b: float32, a: float32) -> bool    #foreign SDL3;

SDL_GetRenderDrawColor           :: (renderer: *SDL_Renderer,
                                     r: *u8, g: *u8, b: *u8, a: *u8) -> bool                    #foreign SDL3;

SDL_GetRenderDrawColorFloat      :: (renderer: *SDL_Renderer,
                                    r: *float32, g: *float32, b: *float32, a: *float32) -> bool #foreign SDL3;

SDL_SetRenderColorScale          :: (renderer: *SDL_Renderer, scale: float32) -> bool           #foreign SDL3;
SDL_GetRenderColorScale          :: (renderer: *SDL_Renderer, scale: *float32) -> bool          #foreign SDL3;
SDL_SetRenderDrawBlendMode       :: (renderer: *SDL_Renderer,
                                     blend_mode: SDL_BlendMode) -> bool                         #foreign SDL3;

SDL_GetRenderDrawBlendMode       :: (renderer: *SDL_Renderer,
                                     blend_mode: *SDL_BlendMode) -> bool                        #foreign SDL3;

SDL_RenderClear                  :: (renderer: *SDL_Renderer) -> bool                           #foreign SDL3;
SDL_RenderPoint                  :: (renderer: *SDL_Renderer, x: float32, y: float32) -> bool   #foreign SDL3;
SDL_RenderPoints                 :: (renderer: *SDL_Renderer,
                                     points: *SDL_FPoint, count: s32) -> bool                   #foreign SDL3;

SDL_RenderLine                   :: (renderer: *SDL_Renderer,
                                     x1: float32, y1: float32,
                                     x2: float32, y2: float32) -> bool                          #foreign SDL3;

SDL_RenderLines                  :: (renderer: *SDL_Renderer,
                                     points: *SDL_FPoint, count: s32) -> bool                   #foreign SDL3;

SDL_RenderRect                   :: (renderer: *SDL_Renderer, rect: *SDL_FRect) -> bool         #foreign SDL3;
SDL_RenderRects                  :: (renderer: *SDL_Renderer,
                                     rects: *SDL_FRect, count: s32) -> bool                     #foreign SDL3;

SDL_RenderFillRect               :: (renderer: *SDL_Renderer, rect: *SDL_FRect) -> bool         #foreign SDL3;
SDL_RenderFillRects              :: (renderer: *SDL_Renderer,
                                     rects: *SDL_FRect, count: s32) -> bool                     #foreign SDL3;

SDL_RenderTexture                :: (renderer: *SDL_Renderer, texture: *SDL_Texture,
                                     src_rect: *SDL_FRect, dst_rect: *SDL_FRect) -> bool        #foreign SDL3;

SDL_RenderTextureRotated         :: (renderer: *SDL_Renderer, texture: *SDL_Texture,
                                     src_rect: *SDL_FRect, dst_rect: *SDL_FRect,
                                     angle: float64, center: *SDL_FPoint,
                                     flip: SDL_FlipMode) -> bool                                #foreign SDL3;

SDL_RenderTextureTiled           :: (renderer: *SDL_Renderer, texture: *SDL_Texture,
                                     src_rect: *SDL_FRect, scale: float32,
                                     dst_rect: *SDL_FRect) -> bool                              #foreign SDL3;

SDL_RenderTexture9Grid           :: (renderer: *SDL_Renderer, texture: *SDL_Texture,
                                     src_rect: *SDL_FRect,
                                     left_width: float32, right_width: float32,
                                     top_height: float32, bottom_height: float32,
                                     scale: float32, dst_rect: *SDL_FRect) -> bool              #foreign SDL3;

SDL_RenderGeometry               :: (renderer: *SDL_Renderer, texture: *SDL_Texture,
                                     vertices: *SDL_Vertex, num_vertices: s32,
                                     indices: s32, num_indices: s32) -> bool                    #foreign SDL3;

SDL_RenderGeometryRaw            :: (renderer: *SDL_Renderer, texture: *SDL_Texture,
                                     xy: *float32, xy_stride: s32,
                                     color: SDL_FColor, color_stride: s32,
                                     uv: *float32, uv_stride: s32, num_vertices: s32,
                                     indices: *void, num_indices: s32,
                                     size_indices: s32) -> bool                                 #foreign SDL3;

SDL_RenderReadPixels             :: (renderer: *SDL_Renderer, rect: *SDL_Rect) -> *SDL_Surface  #foreign SDL3;
SDL_RenderPresent                :: (renderer: *SDL_Renderer) -> bool                           #foreign SDL3;
SDL_DestroyTexture               :: (texture: *SDL_Texture)                                     #foreign SDL3;
SDL_DestroyRenderer              :: (renderer: *SDL_Renderer)                                   #foreign SDL3;
SDL_FlushRenderer                :: (renderer: *SDL_Renderer) -> bool                           #foreign SDL3;
SDL_GetRenderMetalLayer          :: (renderer: *SDL_Renderer) -> *void                          #foreign SDL3;
SDL_GetRenderMetalCommandEncoder :: (renderer: *SDL_Renderer) -> *void                          #foreign SDL3;
SDL_AddVulkanRenderSemaphores    :: (renderer: *SDL_Renderer,
                                     wait_stage_mask: u32, wait_semaphore: s64,
                                     signal_semaphore: s64) -> bool                             #foreign SDL3;

SDL_RENDERER_VSYNC_DISABLED :: 0;
SDL_RENDERER_VSYNC_ADAPTIVE :: -1;

SDL_SetRenderVSync               :: (renderer: *SDL_Renderer, vsync: s32) -> bool               #foreign SDL3;
SDL_GetRenderVSync               :: (renderer: *SDL_Renderer, vsync: *s32) -> bool              #foreign SDL3;

SDL_RenderDebugText              :: (renderer: *SDL_Renderer,
                                     x: float32, y: float32, str: *u8) -> bool                  #foreign SDL3;

SDL_DEBUG_TEXT_FONT_CHARACTER_SIZE :: 8;
