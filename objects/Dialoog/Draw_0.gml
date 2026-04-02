draw_set_font(font_menu_larger); // standaard font
draw_set_color(c_white);
draw_set_color(c_black);
draw_rectangle(0, 439, 1364, 782, false);

draw_set_color(c_white);


if (dialog_index < array_length(dialog)) {
    draw_text(228, 513, dialog[dialog_index]);
}