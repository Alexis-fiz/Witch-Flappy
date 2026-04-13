if (keyboard_check_pressed(vk_up)) {
    selected--;
}

if (keyboard_check_pressed(vk_down)) {
    selected++;
}

selected = (selected + array_length(options)) mod array_length(options);

if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space)) {
	switch (selected) {
        case 0: // PLAY
			oGame.gameOver = false
            room_goto(room_town);
            break;

        case 1: // QUIT
            game_end();
            break;
    }
}

for (var i = 0; i < array_length(options); i++) {
    var target_scale = (i == selected) ? hover_scale : base_scale;
    scales[i] = lerp(scales[i], target_scale, 0.2);
}