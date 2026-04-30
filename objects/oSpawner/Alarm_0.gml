var currentScore = oGame.currentScore;
var difficulty = clamp(currentScore / 15, 0, 1);

interval_Time = lerp(124, 85, difficulty);

var gap_size = lerp(180, 120, difficulty);

var margin = 120;
var min_y = margin;
var max_y = room_height - margin;

var target_center = random_range(min_y, max_y);

var new_center = lerp(previous_gap_center, target_center, 0.25);

if (new_center < min_y) new_center = lerp(new_center, min_y, 0.2);
if (new_center > max_y) new_center = lerp(new_center, max_y, 0.2);

previous_gap_center = new_center;

var pattern_roll = random(1);

if (difficulty < 0.3) {
    pattern = 0; 
}
else if (pattern_roll < 0.6) {
    pattern = 0; 
}
else if (pattern_roll < 0.8) {
    pattern = 1; 
}
else {
    pattern = 2;
}

switch (pattern) {
    case 1: 
        gap_size *= 0.85;
    break;
    case 2: 
        new_center += choose(-60, 60);
    break;
}

new_center = clamp(new_center, min_y, max_y);

var spawn_x = room_width + 32;
var topPipe = instance_create_layer(spawn_x, new_center - gap_size / 2, "Instances", oPipe);
topPipe.sprite_index = sPipeTop;

var bottomPipe = instance_create_layer(spawn_x, new_center + gap_size / 2, "Instances", oPipe);
bottomPipe.sprite_index = sPipeBot;

var coreArea = instance_create_layer(spawn_x, new_center / 2, "Instances", oScoreArea);
scoreArea.image_yscale = gap_size * 2; // normalized scaling (safer than raw)

if (random(1) < 0.08 && difficulty > 0.5) {
    interval_Time *= 1.25; // short “breather” moment
}

alarm[0] = interval_Time;