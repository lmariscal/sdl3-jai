SDL_Point :: struct
{
    x, y : s32;
}

SDL_FPoint :: struct
{
    x, y : float32;
}

SDL_Rect :: struct
{
    x, y, w, h : s32;
}

SDL_FRect :: struct
{
    x, y, w, h : float32;
}

SDL_RectToFRect :: inline (rect: *SDL_Rect, frect: *SDL_FRect)
{
    frect.x = cast(float32) rect.x;
    frect.y = cast(float32) rect.y;
    frect.w = cast(float32) rect.w;
    frect.h = cast(float32) rect.h;
}

SDL_PointInRect :: inline (p: *SDL_Point, r: *SDL_Rect) -> bool
{
    return (p && r && (p.x >= r.x) && (p.x < (r.x + r.w)) && (p.y >= r.y) && (p.y < (r.y + r.h)));
}

SDL_RectEmpty   :: inline (r: *SDL_Rect) -> bool
{
    return (!r || (r.w <= 0) || (r.h <= 0));
}

SDL_RectsEqual  :: inline (a: *SDL_Rect, b: *SDL_Rect) -> bool
{
    return (a && b && (a.x == b.x) && (a.y == b.y) && (a.w == b.w) && (a.h == b.h));
}

SDL_HasRectIntersection         :: (a: *SDL_Rect, b: *SDL_Rect) -> bool                                         #foreign SDL3;
SDL_GetRectIntersection         :: (a: *SDL_Rect, b: *SDL_Rect, result: *SDL_Rect) -> bool                      #foreign SDL3;
SDL_GetRectUnion                :: (a: *SDL_Rect, b: *SDL_Rect, result: *SDL_Rect) -> bool                      #foreign SDL3;
SDL_GetRectEnclosingPoints      :: (points: *SDL_Point, count: s32, clip: *SDL_Rect, result: *SDL_Rect) -> bool #foreign SDL3;
SDL_GetRectAndLineIntersection  :: (rect: *SDL_Rect, x1: *s32, y1: *s32, x2: *s32, y2: *s32) -> bool            #foreign SDL3;

SDL_PointInRectFloat  :: inline (p: *SDL_FPoint, r: *SDL_FRect) -> bool
{
    return ( p && r && (p.x >= r.x) && (p.x <= (r.x + r.w)) && (p.y >= r.y) && (p.y <= (r.y + r.h)) );
}

SDL_RectEmptyFloat    :: inline (r: *SDL_FRect) -> bool
{
    return (!r || (r.w < 0.0) || (r.h < 0.0));
}

SDL_RectsEqualEpsilon :: inline (a: *SDL_FRect, b: *SDL_FRect, epsilon: float32) -> bool
{
    return (a && b && ((a == b) ||
            ((SDL_fabsf(a.x - b.x) <= epsilon) &&
            (SDL_fabsf(a.y - b.y) <= epsilon) &&
            (SDL_fabsf(a.w - b.w) <= epsilon) &&
            (SDL_fabsf(a.h - b.h) <= epsilon))));
}

SDL_RectsEqualFloat   :: inline (a: *SDL_FRect, b: *SDL_FRect) -> bool
{
    return SDL_RectsEqualEpsilon(a, b, SDL_FLT_EPSILON);
}

SDL_HasRectIntersectionFloat    :: (a: *SDL_FRect, b: *SDL_FRect) -> bool                                       #foreign SDL3;
SDL_GetRectIntersectionFloat    :: (a: *SDL_FRect, b: *SDL_FRect, result: *SDL_FRect) -> bool                   #foreign SDL3;
SDL_GetRectUnionFloat           :: (a: *SDL_FRect, b: *SDL_FRect, result: *SDL_FRect) -> bool                   #foreign SDL3;
SDL_GetRectEnclosingPointsFloat :: (points: *SDL_FPoint, count: s32,
                                    clip: *SDL_FRect, result: *SDL_FRect) -> bool                               #foreign SDL3;
SDL_GetRectAndLineIntersectionFloat :: (rect: *SDL_FRect, x1: *float32, y1: *float32,
                                        x2: *float32, y2: *float32) -> bool                                     #foreign SDL3;
