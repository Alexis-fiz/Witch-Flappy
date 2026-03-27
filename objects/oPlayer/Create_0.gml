/// @description Flappy Bird Movement & Rotation
// Handles bird jump, gravity, and angle rotation based on movement

// Create Event Variables (put these in the Create Event)

forceUp = 0;      // Vertical velocity
angle = 0;        // Current rotation angle
maxAngle = 0;     // Maximum rotation angle for this frame
GRAVITY = 0.4;   // Gravity constant
JUMP_FORCE = -6;  // Jump strength
ROTATION_SPEED = 0.1;  // How fast the bird rotates
