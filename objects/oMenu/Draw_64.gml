// DRAW LOGO
draw_sprite_ext(
    logo,
    0,
    logo_x,
    logo_y,
    logo_scale,
    logo_scale,
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