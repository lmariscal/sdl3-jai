sdl :: #import,dir "../../sdl3-jai";
#import "Basic";

main :: () {
    ok := sdl.init(.VIDEO);
    if !ok {
        log("Failed to initialize SDL: '%'", to_string(sdl.get_error()), flags = .ERROR);
        exit(xx sdl.App_Result.FAILURE);
    }

    window := sdl.create_window(to_c_string("simple"), 800, 600);
    if window == null {
        log("Failed to create window: '%'", to_string(sdl.get_error()), flags = .ERROR);
        exit(xx sdl.App_Result.FAILURE);
    }

    running := true;
    while running {
        event: sdl.Event;
        while sdl.poll_event(*event) {
            if event.type == .QUIT {
                running = false;
            }
        }
    }
}
