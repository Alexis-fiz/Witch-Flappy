
if (!oGame.gameOver) {
    if (keyboard_check_pressed(vk_space)) { 
        forceUp = JUMP_FORCE;
    }
    forceUp += GRAVITY;
    y += forceUp;
    if (y > yprevious) { 
        maxAngle = -15;
    } else { 
        maxAngle = 15;
    }

    angle = lerp(angle, maxAngle, ROTATION_SPEED);
    image_angle = angle;
}