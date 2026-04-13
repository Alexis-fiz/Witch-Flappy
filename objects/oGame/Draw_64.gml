var score_str = string(currentScore);
var highScore_str = string(highscore);
// Position (top center)
var start_x = display_get_gui_width() / 2;
var y_pos = 64;

// Spacing between digits
var spacing = 28;

// Center the whole number
var total_width = string_length(score_str) * spacing;
x = start_x - total_width / 2;

if (!gameOver && room == room_town) {
	for (var i = 1; i <= string_length(score_str); i++) {
	    var digit = real(string_char_at(score_str, i));
		draw_sprite_ext(sScoreNumbers, digit, x, y_pos, score_scale, score_scale, 0, c_white, 1);
	    x += spacing;
	}
} 


