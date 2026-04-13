if (fading) {
    fade_alpha += fade_speed * fade_dir;
    if (fade_alpha >= 1 && fade_dir == 1) {
        room_goto(target_room);
        fade_dir = -1;
    }
    if (fade_alpha <= 0 && fade_dir == -1) {
        fade_alpha = 0;
        fading = false;
    }
}