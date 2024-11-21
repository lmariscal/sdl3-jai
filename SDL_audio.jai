SDL_AUDIO_MASK_BITSIZE       :: (0xFF);
SDL_AUDIO_MASK_FLOAT         :: (1<<8);
SDL_AUDIO_MASK_BIG_ENDIAN    :: (1<<12);
SDL_AUDIO_MASK_SIGNED        :: (1<<15);

SDL_DEFINE_AUDIO_FORMAT :: (signed: u16, big_endian: u16, flt: u16, size: u16) -> u16
{
    return (signed << 15) | (big_endian << 12) | (flt << 8) | (size & SDL_AUDIO_MASK_BITSIZE);
}

SDL_AudioFormat :: enum u32
{
    SDL_AUDIO_UNKNOWN   :: 0x0000;
    SDL_AUDIO_U8        :: 0x0008;
    SDL_AUDIO_S8        :: 0x8008;
    SDL_AUDIO_S16LE     :: 0x8010;
    SDL_AUDIO_S16BE     :: 0x9010;
    SDL_AUDIO_S32LE     :: 0x8020;
    SDL_AUDIO_S32BE     :: 0x9020;
    SDL_AUDIO_F32LE     :: 0x8120;
    SDL_AUDIO_F32BE     :: 0x9120;
}

// #if SDL_BYTEORDER == SDL_LIL_ENDIAN
SDL_AUDIO_S16: SDL_AudioFormat : .SDL_AUDIO_S16LE;
SDL_AUDIO_S32: SDL_AudioFormat : .SDL_AUDIO_S32LE;
SDL_AUDIO_F32: SDL_AudioFormat : .SDL_AUDIO_F32LE;

// #if SDL_BYTEORDER != SDL_LIL_ENDIAN
// SDL_AUDIO_S16 = SDL_AUDIO_S16BE,
// SDL_AUDIO_S32 = SDL_AUDIO_S32BE,
// SDL_AUDIO_F32 = SDL_AUDIO_F32BE


SDL_AUDIO_BITSIZE        :: (x: u32) -> u32  {return (x & SDL_AUDIO_MASK_BITSIZE);}
SDL_AUDIO_BYTESIZE       :: (x: u32) -> u32  {return SDL_AUDIO_BITSIZE(x) / 8;}
SDL_AUDIO_ISFLOAT        :: (x: u32) -> bool {return xx (x & SDL_AUDIO_MASK_FLOAT);}
SDL_AUDIO_ISBIGENDIAN    :: (x: u32) -> bool {return xx (x & SDL_AUDIO_MASK_BIG_ENDIAN);}
SDL_AUDIO_ISLITTLEENDIAN :: (x: u32) -> bool {return !SDL_AUDIO_ISBIGENDIAN(x);}
SDL_AUDIO_ISSIGNED       :: (x: u32) -> bool {return xx (x & SDL_AUDIO_MASK_SIGNED);}
SDL_AUDIO_ISINT          :: (x: u32) -> bool {return !SDL_AUDIO_ISFLOAT(x);}
SDL_AUDIO_ISUNSIGNED     :: (x: u32) -> bool {return !SDL_AUDIO_ISSIGNED(x);}


SDL_AudioDeviceID :: u32;

SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK  : SDL_AudioDeviceID : 0xFFFFFFFF;
SDL_AUDIO_DEVICE_DEFAULT_RECORDING : SDL_AudioDeviceID : 0xFFFFFFFE;

SDL_AudioSpec :: struct
{
    format:   SDL_AudioFormat;
    channels: u32;
    freq:     s32;
}

SDL_AUDIO_FRAMESIZE      :: (x: SDL_AudioSpec) -> u32 {return SDL_AUDIO_BYTESIZE(xx x.format * x.channels);}

SDL_AudioStream :: void;


SDL_GetNumAudioDrivers             :: () -> s32                                                                 #foreign SDL3;
SDL_GetAudioDriver                 :: (index: s32) -> *u8                                                       #foreign SDL3;
SDL_GetCurrentAudioDriver          :: () -> *u8                                                                 #foreign SDL3;
SDL_GetAudioPlaybackDevices        :: (count: *s32) -> *SDL_AudioDeviceID                                       #foreign SDL3;
SDL_GetAudioRecordingDevices       :: (count: *s32) -> *SDL_AudioDeviceID                                       #foreign SDL3;
SDL_GetAudioDeviceName             :: (dev_id: SDL_AudioDeviceID) -> *u8                                        #foreign SDL3;
SDL_GetAudioDeviceFormat           :: (dev_id: SDL_AudioDeviceID, spec: *SDL_AudioSpec,
                                       sample_frames: *s32) -> bool                                             #foreign SDL3;
SDL_GetAudioDeviceChannelMap       :: (dev_id: SDL_AudioDeviceID, count: *s32) -> *s32                          #foreign SDL3;
SDL_OpenAudioDevice                :: (dev_id: SDL_AudioDeviceID, spec: *SDL_AudioSpec) -> SDL_AudioDeviceID    #foreign SDL3;
SDL_PauseAudioDevice               :: (dev_id: SDL_AudioDeviceID) -> bool                                       #foreign SDL3;
SDL_ResumeAudioDevice              :: (dev_id: SDL_AudioDeviceID) -> bool                                       #foreign SDL3;
SDL_AudioDevicePaused              :: (dev_id: SDL_AudioDeviceID) -> bool                                       #foreign SDL3;
SDL_GetAudioDeviceGain             :: (dev_id: SDL_AudioDeviceID) -> float32                                    #foreign SDL3;
SDL_SetAudioDeviceGain             :: (dev_id: SDL_AudioDeviceID, gain: float32) -> bool                        #foreign SDL3;
SDL_CloseAudioDevice               :: (dev_id: SDL_AudioDeviceID)                                               #foreign SDL3;
SDL_BindAudioStreams               :: (dev_id: SDL_AudioDeviceID, streams: **SDL_AudioStream,
                                       num_streams: s32) -> bool                                                #foreign SDL3;
SDL_BindAudioStream                :: (dev_id: SDL_AudioDeviceID, stream: *SDL_AudioStream) -> bool             #foreign SDL3;
SDL_UnbindAudioStreams             :: (streams: **SDL_AudioStream, num_streams: s32)                            #foreign SDL3;
SDL_UnbindAudioStream              :: (stream: *SDL_AudioStream)                                                #foreign SDL3;
SDL_GetAudioStreamDevice           :: (stream: *SDL_AudioStream) -> SDL_AudioDeviceID                           #foreign SDL3;
SDL_CreateAudioStream              :: (src_spec: *SDL_AudioSpec, dst_spec: *SDL_AudioSpec) -> *SDL_AudioStream  #foreign SDL3;
SDL_GetAudioStreamProperties       :: (stream: *SDL_AudioStream) -> SDL_PropertiesID                            #foreign SDL3;
SDL_GetAudioStreamFormat           :: (stream: *SDL_AudioStream,
                                       src_spec: *SDL_AudioSpec, dst_spec: *SDL_AudioSpec) -> bool              #foreign SDL3;
SDL_SetAudioStreamFormat           :: (stream: *SDL_AudioStream,
                                       src_spec: *SDL_AudioSpec, dst_spec: *SDL_AudioSpec) -> bool              #foreign SDL3;
SDL_GetAudioStreamFrequencyRatio   :: (stream: *SDL_AudioStream) -> float32                                     #foreign SDL3;
SDL_SetAudioStreamFrequencyRatio   :: (stream: *SDL_AudioStream, ratio: float32) -> bool                        #foreign SDL3;
SDL_GetAudioStreamGain             :: (stream: *SDL_AudioStream) -> float32                                     #foreign SDL3;
SDL_SetAudioStreamGain             :: (stream: *SDL_AudioStream, gain: float32) -> bool                         #foreign SDL3;
SDL_GetAudioStreamInputChannelMap  :: (stream: *SDL_AudioStream, count: *s32) -> *s32                           #foreign SDL3;
SDL_GetAudioStreamOutputChannelMap :: (stream: *SDL_AudioStream, count: *s32) -> *s32                           #foreign SDL3;
SDL_SetAudioStreamInputChannelMap  :: (stream: *SDL_AudioStream, chmap: *s32, count: s32) -> bool               #foreign SDL3;
SDL_SetAudioStreamOutputChannelMap :: (stream: *SDL_AudioStream, chmap: *s32, count: s32) -> bool               #foreign SDL3;
SDL_PutAudioStreamData             :: (stream: *SDL_AudioStream, buf: *void, len: s32) -> bool                  #foreign SDL3;
SDL_GetAudioStreamData             :: (stream: *SDL_AudioStream, buf: *void, len: s32) -> s32                   #foreign SDL3;
SDL_GetAudioStreamAvailable        :: (stream: *SDL_AudioStream) -> s32                                         #foreign SDL3;
SDL_GetAudioStreamQueued           :: (stream: *SDL_AudioStream) -> s32                                         #foreign SDL3;
SDL_FlushAudioStream               :: (stream: *SDL_AudioStream) -> bool                                        #foreign SDL3;
SDL_ClearAudioStream               :: (stream: *SDL_AudioStream) -> bool                                        #foreign SDL3;
SDL_PauseAudioStreamDevice         :: (stream: *SDL_AudioStream) -> bool                                        #foreign SDL3;
SDL_ResumeAudioStreamDevice        :: (stream: *SDL_AudioStream) -> bool                                        #foreign SDL3;
SDL_LockAudioStream                :: (stream: *SDL_AudioStream) -> bool                                        #foreign SDL3;
SDL_UnlockAudioStream              :: (stream: *SDL_AudioStream) -> bool                                        #foreign SDL3;


SDL_AudioStreamCallback :: #type (userdata: *void, stream: *SDL_AudioStream, additional_amount: s32, total_amount: s32);

SDL_SetAudioStreamGetCallback      :: (stream: *SDL_AudioStream, callback: SDL_AudioStreamCallback,
                                       userdata: *void) -> bool                                                 #foreign SDL3;
SDL_SetAudioStreamPutCallback      :: (stream: *SDL_AudioStream, callback: SDL_AudioStreamCallback,
                                       userdata: *void) -> bool                                                 #foreign SDL3;
SDL_DestroyAudioStream             :: (stream: *SDL_AudioStream)                                                #foreign SDL3;
SDL_OpenAudioDeviceStream          :: (dev_id: SDL_AudioDeviceID, spec: *SDL_AudioSpec,
                                       callback: SDL_AudioStreamCallback, userdata: *void) -> *SDL_AudioStream  #foreign SDL3;

SDL_AudioPostmixCallback :: #type (userdata: *void, spec: SDL_AudioSpec, buffer: *float32, buflen: s32);

SDL_SetAudioPostmixCallback        :: (dev_id: SDL_AudioDeviceID, callback: SDL_AudioPostmixCallback,
                                       userdata: *void) -> bool                                                 #foreign SDL3;
SDL_LoadWAV_IO                     :: (src: *SDL_IOStream, close_io: bool, spec: *SDL_AudioSpec,
                                       audio_buf: **u8, audio_len: *u32) -> bool                                #foreign SDL3;
SDL_LoadWAV                        :: (path: *u8, spec: *SDL_AudioSpec,
                                       audio_buf: **u8, audio_len: *u32) -> bool                                #foreign SDL3;
SDL_MixAudio                       :: (dst: *u8, src: *u8, format: SDL_AudioFormat,
                                       len: u32, volume: float32) -> bool                                       #foreign SDL3;
SDL_ConvertAudioSamples            :: (src_spec: *SDL_AudioSpec, src_data: *u8, src_len: s32,
                                       dst_spec: *SDL_AudioSpec, dst_data: **u8, dst_len: *s32) -> bool         #foreign SDL3;
SDL_GetAudioFormatName             :: (format: SDL_AudioFormat) -> *u8                                          #foreign SDL3;
SDL_GetSilenceValueForFormat       :: (format: SDL_AudioFormat) -> s32                                          #foreign SDL3;
