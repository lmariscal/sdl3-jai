ALPHA_OPAQUE            :: 255;
ALPHA_OPAQUE_FLOAT      :: 1.0;
ALPHA_TRANSPARENT       :: 0;
ALPHA_TRANSPARENT_FLOAT :: 0.0;

Pixel_Type :: enum u32
{
    UNKNOWN;
    INDEX1;
    INDEX4;
    INDEX8;
    PACKED8;
    PACKED16;
    PACKED32;
    ARRAYU8;
    ARRAYU16;
    ARRAYU32;
    ARRAYF16;
    ARRAYF32;
    INDEX2;
}

Bitmap_Order :: enum u32
{
    ORDER_NONE;
    ORDER_4321;
    ORDER_1234;
}

Packed_Order :: enum u32
{
    NONE;
    XRGB;
    RGBX;
    ARGB;
    RGBA;
    XBGR;
    BGRX;
    ABGR;
    BGRA;
}

Array_Order :: enum u32
{
    NONE;
    RGB;
    RGBA;
    ARGB;
    BGR;
    BGRA;
    ABGR;
}

Packed_Layout :: enum u32
{
    LAYOUT_NONE;
    LAYOUT_332;
    LAYOUT_4444;
    LAYOUT_1555;
    LAYOUT_5551;
    LAYOUT_565;
    LAYOUT_8888;
    LAYOUT_2101010;
    LAYOUT_1010102;
}

DEFINE_PIXELFOURCC :: (a: u8, b: u8, c: u8, d: u8) -> u32 #expand {return FOURCC(a, b, c, d);}

Pixel_Format :: enum u32
{
    UNKNOWN       :: 0;
    INDEX1LSB     :: 0x11100100;
    INDEX1MSB     :: 0x11200100;
    INDEX2LSB     :: 0x1c100200;
    INDEX2MSB     :: 0x1c200200;
    INDEX4LSB     :: 0x12100400;
    INDEX4MSB     :: 0x12200400;
    INDEX8        :: 0x13000801;
    RGB332        :: 0x14110801;
    XRGB4444      :: 0x15120c02;
    XBGR4444      :: 0x15520c02;
    XRGB1555      :: 0x15130f02;
    XBGR1555      :: 0x15530f02;
    ARGB4444      :: 0x15321002;
    RGBA4444      :: 0x15421002;
    ABGR4444      :: 0x15721002;
    BGRA4444      :: 0x15821002;
    ARGB1555      :: 0x15331002;
    RGBA5551      :: 0x15441002;
    ABGR1555      :: 0x15731002;
    BGRA5551      :: 0x15841002;
    RGB565        :: 0x15151002;
    BGR565        :: 0x15551002;
    RGB24         :: 0x17101803;
    BGR24         :: 0x17401803;
    XRGB8888      :: 0x16161804;
    RGBX8888      :: 0x16261804;
    XBGR8888      :: 0x16561804;
    BGRX8888      :: 0x16661804;
    ARGB8888      :: 0x16362004;
    RGBA8888      :: 0x16462004;
    ABGR8888      :: 0x16762004;
    BGRA8888      :: 0x16862004;
    XRGB2101010   :: 0x16172004;
    XBGR2101010   :: 0x16572004;
    ARGB2101010   :: 0x16372004;
    ABGR2101010   :: 0x16772004;
    RGB48         :: 0x18103006;
    BGR48         :: 0x18403006;
    RGBA64        :: 0x18204008;
    ARGB64        :: 0x18304008;
    BGRA64        :: 0x18504008;
    ABGR64        :: 0x18604008;
    RGB48_FLOAT   :: 0x1a103006;
    BGR48_FLOAT   :: 0x1a403006;
    RGBA64_FLOAT  :: 0x1a204008;
    ARGB64_FLOAT  :: 0x1a304008;
    BGRA64_FLOAT  :: 0x1a504008;
    ABGR64_FLOAT  :: 0x1a604008;
    RGB96_FLOAT   :: 0x1b10600c;
    BGR96_FLOAT   :: 0x1b40600c;
    RGBA128_FLOAT :: 0x1b208010;
    ARGB128_FLOAT :: 0x1b308010;
    BGRA128_FLOAT :: 0x1b508010;
    ABGR128_FLOAT :: 0x1b608010;
    YV12          :: 0x32315659;
    IYUV          :: 0x56555949;
    YUY2          :: 0x32595559;
    UYVY          :: 0x59565955;
    YVYU          :: 0x55595659;
    NV12          :: 0x3231564e;
    NV21          :: 0x3132564e;
    P010          :: 0x30313050;
    EXTERNAL_OES  :: 0x2053454f;

// #if BYTEORDER == BIG_ENDIAN
// {
//     RGBA32 :: RGBA8888;
//     ARGB32 :: ARGB8888;
//     BGRA32 :: BGRA8888;
//     ABGR32 :: ABGR8888;
//     RGBX32 :: RGBX8888;
//     XRGB32 :: XRGB8888;
//     BGRX32 :: BGRX8888;
//     XBGR32 :: XBGR8888;
// }

// #if BYTEORDER != BIG_ENDIAN
// {
    RGBA32        :: 0x16762004;
    ARGB32        :: 0x16862004;
    BGRA32        :: 0x16362004;
    ABGR32        :: 0x16462004;
    RGBX32        :: 0x16561804;
    XRGB32        :: 0x16661804;
    BGRX32        :: 0x16161804;
    XBGR32        :: 0x16261804;
// }
}



Color :: struct
{
    r, g, b, a: u8;
}

F_Color :: struct
{
    r, g, b, a: float32;
}

Palette :: struct
{
    ncolors:  s32;
    colors:   Color;
    version:  u32;
    refcount: s32;
}

Colorspace :: enum u32
{
    UNKNOWN        :: 0;
    SRGB           :: 0x120005a0;
    SRGB_LINEAR    :: 0x12000500;
    HDR10          :: 0x12002600;
    JPEG           :: 0x220004c6;
    BT601_LIMITED  :: 0x211018c6;
    BT601_FULL     :: 0x221018c6;
    BT709_LIMITED  :: 0x21100421;
    BT709_FULL     :: 0x22100421;
    BT2020_LIMITED :: 0x21102609;
    BT2020_FULL    :: 0x22102609;
    RGB_DEFAULT    :: SRGB;
    YUV_DEFAULT    :: JPEG;
}
