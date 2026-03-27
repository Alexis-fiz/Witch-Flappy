// Gap center with change limit
var margin = 128;
var min_y = margin;
var max_y = room_height - margin;

// Calculate new center with limit from previous
var target_center = random_range(min_y, max_y);

// Limit how much it can change from previous gap
var new_center = clamp(
    target_center,
    previous_gap_center - max_gap_change,
    previous_gap_center + max_gap_change
);

// Ensure it stays within room bounds
new_center = clamp(new_center, min_y, max_y);

// Store for next pipe
previous_gap_center = new_center;

// Gap size (distance between pipes)
var gap_size = random_range(160, 180);

// Spawn just off screen
var spawn_x = room_width + 32;

// TOP pipe
var topPipe = instance_create_layer(
    spawn_x,
    new_center - gap_size/2,
    "Instances",
    oPipe
);
topPipe.sprite_index = sPipeTop;

// BOTTOM pipe
var bottomPipe = instance_create_layer(
    spawn_x,
    new_center + gap_size/2,
    "Instances",
    oPipe
);
bottomPipe.sprite_index = sPipeBot;

// Reset alarm
alarm_set(0, interval_Time);