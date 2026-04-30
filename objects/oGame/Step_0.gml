score_scale = lerp(score_scale, 4, 0.2);
if (!gameOver && room == room_town && !hasThemeSound) {
	audio_play_sound(snd_theme, 10, true);
	hasThemeSound = true;
}
if (gameOver && room == room_gameOver) {
	audio_stop_sound(snd_theme)
}