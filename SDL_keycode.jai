SCANCODE_MASK           :: (1<<30);
SCANCODE_TO_KEYCODE     :: (x: u32) -> u32 #expand {return (x | SCANCODE_MASK);}

Keycode :: enum u32
{
    UNKNOWN                :: 0x00000000; /**< 0 */
    RETURN                 :: 0x0000000d; /**< '\r' */
    ESCAPE                 :: 0x0000001b; /**< '\x1B' */
    BACKSPACE              :: 0x00000008; /**< '\b' */
    TAB                    :: 0x00000009; /**< '\t' */
    SPACE                  :: 0x00000020; /**< ' ' */
    EXCLAIM                :: 0x00000021; /**< '!' */
    DBLAPOSTROPHE          :: 0x00000022; /**< '"' */
    HASH                   :: 0x00000023; /**< '#' */
    DOLLAR                 :: 0x00000024; /**< '$' */
    PERCENT                :: 0x00000025; /**< '%' */
    AMPERSAND              :: 0x00000026; /**< '&' */
    APOSTROPHE             :: 0x00000027; /**< '\'' */
    LEFTPAREN              :: 0x00000028; /**< '(' */
    RIGHTPAREN             :: 0x00000029; /**< ')' */
    ASTERISK               :: 0x0000002a; /**< '*' */
    PLUS                   :: 0x0000002b; /**< '+' */
    COMMA                  :: 0x0000002c; /**< ',' */
    MINUS                  :: 0x0000002d; /**< '-' */
    PERIOD                 :: 0x0000002e; /**< '.' */
    SLASH                  :: 0x0000002f; /**< '/' */
    n0                      :: 0x00000030; /**< '0' */
    n1                      :: 0x00000031; /**< '1' */
    n2                      :: 0x00000032; /**< '2' */
    n3                      :: 0x00000033; /**< '3' */
    n4                      :: 0x00000034; /**< '4' */
    n5                      :: 0x00000035; /**< '5' */
    n6                      :: 0x00000036; /**< '6' */
    n7                      :: 0x00000037; /**< '7' */
    n8                      :: 0x00000038; /**< '8' */
    n9                      :: 0x00000039; /**< '9' */
    COLON                  :: 0x0000003a; /**< ':' */
    SEMICOLON              :: 0x0000003b; /**< ';' */
    LESS                   :: 0x0000003c; /**< '<' */
    EQUALS                 :: 0x0000003d; /**< '=' */
    GREATER                :: 0x0000003e; /**< '>' */
    QUESTION               :: 0x0000003f; /**< '?' */
    AT                     :: 0x00000040; /**< '@' */
    LEFTBRACKET            :: 0x0000005b; /**< '[' */
    BACKSLASH              :: 0x0000005c; /**< '\\' */
    RIGHTBRACKET           :: 0x0000005d; /**< ']' */
    CARET                  :: 0x0000005e; /**< '^' */
    UNDERSCORE             :: 0x0000005f; /**< '_' */
    GRAVE                  :: 0x00000060; /**< '`' */
    A                      :: 0x00000061; /**< 'a' */
    B                      :: 0x00000062; /**< 'b' */
    C                      :: 0x00000063; /**< 'c' */
    D                      :: 0x00000064; /**< 'd' */
    E                      :: 0x00000065; /**< 'e' */
    F                      :: 0x00000066; /**< 'f' */
    G                      :: 0x00000067; /**< 'g' */
    H                      :: 0x00000068; /**< 'h' */
    I                      :: 0x00000069; /**< 'i' */
    J                      :: 0x0000006a; /**< 'j' */
    K                      :: 0x0000006b; /**< 'k' */
    L                      :: 0x0000006c; /**< 'l' */
    M                      :: 0x0000006d; /**< 'm' */
    N                      :: 0x0000006e; /**< 'n' */
    O                      :: 0x0000006f; /**< 'o' */
    P                      :: 0x00000070; /**< 'p' */
    Q                      :: 0x00000071; /**< 'q' */
    R                      :: 0x00000072; /**< 'r' */
    S                      :: 0x00000073; /**< 's' */
    T                      :: 0x00000074; /**< 't' */
    U                      :: 0x00000075; /**< 'u' */
    V                      :: 0x00000076; /**< 'v' */
    W                      :: 0x00000077; /**< 'w' */
    X                      :: 0x00000078; /**< 'x' */
    Y                      :: 0x00000079; /**< 'y' */
    Z                      :: 0x0000007a; /**< 'z' */
    LEFTBRACE              :: 0x0000007b; /**< '{' */
    PIPE                   :: 0x0000007c; /**< '|' */
    RIGHTBRACE             :: 0x0000007d; /**< '}' */
    TILDE                  :: 0x0000007e; /**< '~' */
    DELETE                 :: 0x0000007f; /**< '\x7F' */
    PLUSMINUS              :: 0x000000b1; /**< '\xB1' */
    CAPSLOCK               :: 0x40000039; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CAPSLOCK) */
    F1                     :: 0x4000003a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F1) */
    F2                     :: 0x4000003b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F2) */
    F3                     :: 0x4000003c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F3) */
    F4                     :: 0x4000003d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F4) */
    F5                     :: 0x4000003e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F5) */
    F6                     :: 0x4000003f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F6) */
    F7                     :: 0x40000040; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F7) */
    F8                     :: 0x40000041; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F8) */
    F9                     :: 0x40000042; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F9) */
    F10                    :: 0x40000043; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F10) */
    F11                    :: 0x40000044; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F11) */
    F12                    :: 0x40000045; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F12) */
    PRINTSCREEN            :: 0x40000046; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PRINTSCREEN) */
    SCROLLLOCK             :: 0x40000047; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SCROLLLOCK) */
    PAUSE                  :: 0x40000048; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAUSE) */
    INSERT                 :: 0x40000049; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_INSERT) */
    HOME                   :: 0x4000004a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_HOME) */
    PAGEUP                 :: 0x4000004b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAGEUP) */
    END                    :: 0x4000004d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_END) */
    PAGEDOWN               :: 0x4000004e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PAGEDOWN) */
    RIGHT                  :: 0x4000004f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RIGHT) */
    LEFT                   :: 0x40000050; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LEFT) */
    DOWN                   :: 0x40000051; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_DOWN) */
    UP                     :: 0x40000052; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_UP) */
    NUMLOCKCLEAR           :: 0x40000053; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_NUMLOCKCLEAR) */
    KP_DIVIDE              :: 0x40000054; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_DIVIDE) */
    KP_MULTIPLY            :: 0x40000055; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MULTIPLY) */
    KP_MINUS               :: 0x40000056; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MINUS) */
    KP_PLUS                :: 0x40000057; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_PLUS) */
    KP_ENTER               :: 0x40000058; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_ENTER) */
    KP_1                   :: 0x40000059; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_1) */
    KP_2                   :: 0x4000005a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_2) */
    KP_3                   :: 0x4000005b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_3) */
    KP_4                   :: 0x4000005c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_4) */
    KP_5                   :: 0x4000005d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_5) */
    KP_6                   :: 0x4000005e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_6) */
    KP_7                   :: 0x4000005f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_7) */
    KP_8                   :: 0x40000060; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_8) */
    KP_9                   :: 0x40000061; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_9) */
    KP_0                   :: 0x40000062; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_0) */
    KP_PERIOD              :: 0x40000063; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_PERIOD) */
    APPLICATION            :: 0x40000065; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_APPLICATION) */
    POWER                  :: 0x40000066; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_POWER) */
    KP_EQUALS              :: 0x40000067; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_EQUALS) */
    F13                    :: 0x40000068; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F13) */
    F14                    :: 0x40000069; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F14) */
    F15                    :: 0x4000006a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F15) */
    F16                    :: 0x4000006b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F16) */
    F17                    :: 0x4000006c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F17) */
    F18                    :: 0x4000006d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F18) */
    F19                    :: 0x4000006e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F19) */
    F20                    :: 0x4000006f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F20) */
    F21                    :: 0x40000070; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F21) */
    F22                    :: 0x40000071; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F22) */
    F23                    :: 0x40000072; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F23) */
    F24                    :: 0x40000073; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_F24) */
    EXECUTE                :: 0x40000074; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_EXECUTE) */
    HELP                   :: 0x40000075; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_HELP) */
    MENU                   :: 0x40000076; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MENU) */
    SELECT                 :: 0x40000077; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SELECT) */
    STOP                   :: 0x40000078; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_STOP) */
    AGAIN                  :: 0x40000079; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AGAIN) */
    UNDO                   :: 0x4000007a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_UNDO) */
    CUT                    :: 0x4000007b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CUT) */
    COPY                   :: 0x4000007c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_COPY) */
    PASTE                  :: 0x4000007d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PASTE) */
    FIND                   :: 0x4000007e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_FIND) */
    MUTE                   :: 0x4000007f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MUTE) */
    VOLUMEUP               :: 0x40000080; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_VOLUMEUP) */
    VOLUMEDOWN             :: 0x40000081; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_VOLUMEDOWN) */
    KP_COMMA               :: 0x40000085; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_COMMA) */
    KP_EQUALSAS400         :: 0x40000086; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_EQUALSAS400) */
    ALTERASE               :: 0x40000099; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_ALTERASE) */
    SYSREQ                 :: 0x4000009a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SYSREQ) */
    CANCEL                 :: 0x4000009b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CANCEL) */
    CLEAR                  :: 0x4000009c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CLEAR) */
    PRIOR                  :: 0x4000009d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_PRIOR) */
    RETURN2                :: 0x4000009e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RETURN2) */
    SEPARATOR              :: 0x4000009f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SEPARATOR) */
    OUT                    :: 0x400000a0; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_OUT) */
    OPER                   :: 0x400000a1; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_OPER) */
    CLEARAGAIN             :: 0x400000a2; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CLEARAGAIN) */
    CRSEL                  :: 0x400000a3; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CRSEL) */
    EXSEL                  :: 0x400000a4; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_EXSEL) */
    KP_00                  :: 0x400000b0; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_00) */
    KP_000                 :: 0x400000b1; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_000) */
    THOUSANDSSEPARATOR     :: 0x400000b2; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_THOUSANDSSEPARATOR) */
    DECIMALSEPARATOR       :: 0x400000b3; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_DECIMALSEPARATOR) */
    CURRENCYUNIT           :: 0x400000b4; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CURRENCYUNIT) */
    CURRENCYSUBUNIT        :: 0x400000b5; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CURRENCYSUBUNIT) */
    KP_LEFTPAREN           :: 0x400000b6; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_LEFTPAREN) */
    KP_RIGHTPAREN          :: 0x400000b7; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_RIGHTPAREN) */
    KP_LEFTBRACE           :: 0x400000b8; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_LEFTBRACE) */
    KP_RIGHTBRACE          :: 0x400000b9; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_RIGHTBRACE) */
    KP_TAB                 :: 0x400000ba; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_TAB) */
    KP_BACKSPACE           :: 0x400000bb; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_BACKSPACE) */
    KP_A                   :: 0x400000bc; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_A) */
    KP_B                   :: 0x400000bd; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_B) */
    KP_C                   :: 0x400000be; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_C) */
    KP_D                   :: 0x400000bf; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_D) */
    KP_E                   :: 0x400000c0; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_E) */
    KP_F                   :: 0x400000c1; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_F) */
    KP_XOR                 :: 0x400000c2; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_XOR) */
    KP_POWER               :: 0x400000c3; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_POWER) */
    KP_PERCENT             :: 0x400000c4; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_PERCENT) */
    KP_LESS                :: 0x400000c5; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_LESS) */
    KP_GREATER             :: 0x400000c6; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_GREATER) */
    KP_AMPERSAND           :: 0x400000c7; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_AMPERSAND) */
    KP_DBLAMPERSAND        :: 0x400000c8; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_DBLAMPERSAND) */
    KP_VERTICALBAR         :: 0x400000c9; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_VERTICALBAR) */
    KP_DBLVERTICALBAR      :: 0x400000ca; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_DBLVERTICALBAR) */
    KP_COLON               :: 0x400000cb; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_COLON) */
    KP_HASH                :: 0x400000cc; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_HASH) */
    KP_SPACE               :: 0x400000cd; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_SPACE) */
    KP_AT                  :: 0x400000ce; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_AT) */
    KP_EXCLAM              :: 0x400000cf; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_EXCLAM) */
    KP_MEMSTORE            :: 0x400000d0; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMSTORE) */
    KP_MEMRECALL           :: 0x400000d1; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMRECALL) */
    KP_MEMCLEAR            :: 0x400000d2; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMCLEAR) */
    KP_MEMADD              :: 0x400000d3; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMADD) */
    KP_MEMSUBTRACT         :: 0x400000d4; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMSUBTRACT) */
    KP_MEMMULTIPLY         :: 0x400000d5; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMMULTIPLY) */
    KP_MEMDIVIDE           :: 0x400000d6; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_MEMDIVIDE) */
    KP_PLUSMINUS           :: 0x400000d7; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_PLUSMINUS) */
    KP_CLEAR               :: 0x400000d8; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_CLEAR) */
    KP_CLEARENTRY          :: 0x400000d9; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_CLEARENTRY) */
    KP_BINARY              :: 0x400000da; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_BINARY) */
    KP_OCTAL               :: 0x400000db; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_OCTAL) */
    KP_DECIMAL             :: 0x400000dc; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_DECIMAL) */
    KP_HEXADECIMAL         :: 0x400000dd; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_KP_HEXADECIMAL) */
    LCTRL                  :: 0x400000e0; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LCTRL) */
    LSHIFT                 :: 0x400000e1; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LSHIFT) */
    LALT                   :: 0x400000e2; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LALT) */
    LGUI                   :: 0x400000e3; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_LGUI) */
    RCTRL                  :: 0x400000e4; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RCTRL) */
    RSHIFT                 :: 0x400000e5; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RSHIFT) */
    RALT                   :: 0x400000e6; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RALT) */
    RGUI                   :: 0x400000e7; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_RGUI) */
    MODE                   :: 0x40000101; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MODE) */
    SLEEP                  :: 0x40000102; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SLEEP) */
    WAKE                   :: 0x40000103; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_WAKE) */
    CHANNEL_INCREMENT      :: 0x40000104; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CHANNEL_INCREMENT) */
    CHANNEL_DECREMENT      :: 0x40000105; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CHANNEL_DECREMENT) */
    MEDIA_PLAY             :: 0x40000106; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_PLAY) */
    MEDIA_PAUSE            :: 0x40000107; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_PAUSE) */
    MEDIA_RECORD           :: 0x40000108; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_RECORD) */
    MEDIA_FAST_FORWARD     :: 0x40000109; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_FAST_FORWARD) */
    MEDIA_REWIND           :: 0x4000010a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_REWIND) */
    MEDIA_NEXT_TRACK       :: 0x4000010b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_NEXT_TRACK) */
    MEDIA_PREVIOUS_TRACK   :: 0x4000010c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_PREVIOUS_TRACK) */
    MEDIA_STOP             :: 0x4000010d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_STOP) */
    MEDIA_EJECT            :: 0x4000010e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_EJECT) */
    MEDIA_PLAY_PAUSE       :: 0x4000010f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_PLAY_PAUSE) */
    MEDIA_SELECT           :: 0x40000110; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_MEDIA_SELECT) */
    AC_NEW                 :: 0x40000111; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_NEW) */
    AC_OPEN                :: 0x40000112; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_OPEN) */
    AC_CLOSE               :: 0x40000113; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_CLOSE) */
    AC_EXIT                :: 0x40000114; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_EXIT) */
    AC_SAVE                :: 0x40000115; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_SAVE) */
    AC_PRINT               :: 0x40000116; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_PRINT) */
    AC_PROPERTIES          :: 0x40000117; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_PROPERTIES) */
    AC_SEARCH              :: 0x40000118; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_SEARCH) */
    AC_HOME                :: 0x40000119; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_HOME) */
    AC_BACK                :: 0x4000011a; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_BACK) */
    AC_FORWARD             :: 0x4000011b; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_FORWARD) */
    AC_STOP                :: 0x4000011c; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_STOP) */
    AC_REFRESH             :: 0x4000011d; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_REFRESH) */
    AC_BOOKMARKS           :: 0x4000011e; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_AC_BOOKMARKS) */
    SOFTLEFT               :: 0x4000011f; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SOFTLEFT) */
    SOFTRIGHT              :: 0x40000120; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_SOFTRIGHT) */
    CALL                   :: 0x40000121; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_CALL) */
    ENDCALL                :: 0x40000122; /**< SDL_SCANCODE_TO_KEYCODE(SDL_SCANCODE_ENDCALL) */
}

Keymod  :: enum_flags u16
{
    NONE   :: 0x0000; /**< no modifier is applicable. */
    LSHIFT :: 0x0001; /**< the left Shift key is down. */
    RSHIFT :: 0x0002; /**< the right Shift key is down. */
    LCTRL  :: 0x0040; /**< the left Ctrl (Control) key is down. */
    RCTRL  :: 0x0080; /**< the right Ctrl (Control) key is down. */
    LALT   :: 0x0100; /**< the left Alt key is down. */
    RALT   :: 0x0200; /**< the right Alt key is down. */
    LGUI   :: 0x0400; /**< the left GUI key (often the Windows key) is down. */
    RGUI   :: 0x0800; /**< the right GUI key (often the Windows key) is down. */
    NUM    :: 0x1000; /**< the Num Lock key (may be located on an extended keypad) is down. */
    CAPS   :: 0x2000; /**< the Caps Lock key is down. */
    MODE   :: 0x4000; /**< the !AltGr key is down. */
    SCROLL :: 0x8000; /**< the Scroll Lock key is down. */
    CTRL   :: #run (LCTRL  | RCTRL);   /**< Any Ctrl key is down. */
    SHIFT  :: #run (LSHIFT | RSHIFT); /**< Any Shift key is down. */
    ALT    :: #run (LALT   | RALT);     /**< Any Alt key is down. */
    GUI    :: #run (LGUI   | RGUI);     /**< Any GUI key is down. */
}
