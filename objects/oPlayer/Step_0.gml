// Step Event
// Handle jump input
if (keyboard_check_pressed(vk_space)) { 
    forceUp = JUMP_FORCE;
}

// Apply gravity and update vertical position
forceUp += GRAVITY;
y += forceUp;

// Calculate rotation based on movement direction
// If falling down (y > previous y), rotate downward
// If rising up, rotate upward
if (y > yprevious) { 
    maxAngle = -15;   // Nose down when falling
} else { 
    maxAngle = 15;    // Nose up when rising
}

// Smoothly interpolate to the target angle
angle = lerp(angle, maxAngle, ROTATION_SPEED);
image_angle = angle;
