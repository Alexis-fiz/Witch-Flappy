// Menu options (sprites)
options = [sStart, sQuit];
base_scale = 2;
hover_scale = 3;
selected = 0;

logo = sLogo; // your logo sprite
logo_scale = 4;

logo_x = display_get_gui_width() / 2;
logo_y = 200; // position near top

scales = array_create(array_length(options), 1);
center_x = display_get_gui_width() / 2;
start_y = 350;
spacing = 120;