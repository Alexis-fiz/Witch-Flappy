draw_sprite_ext(
    gameOver,
    0,
    gameOver_x,
    gameOver_y,
    gameOver_scale,
    gameOver_scale,
    0,
    c_white,
    1
);

for (var i = 0; i < array_length(options); i++) {
    var spr = options[i];
    y = start_y + i * spacing;
    draw_sprite_ext(
        spr,
        0,
        center_x,
        y,
        scales[i],
        scales[i],
        0,
        c_white,
        1
    );
}