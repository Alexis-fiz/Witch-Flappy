// Menu options (sprites)
options = [sGetReady, sGameOver];
base_scale = 3;
hover_scale = 4;
selected = 0;

scales = array_create(array_length(options), 1);

center_x = display_get_gui_width() / 2;
start_y = 264;
spacing = 100;