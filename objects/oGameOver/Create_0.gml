// Menu options (sprites)
options = [sStart, sQuit];
base_scale = 2;
hover_scale = 3;
selected = 0;


scales = array_create(array_length(options), 1);
center_x = display_get_gui_width() / 2;
start_y = 350;
spacing = 120;

gameOver = sGameOver; 
gameOver_scale = 3;

gameOver_x = display_get_gui_width() / 2;
gameOver_y = 200; 