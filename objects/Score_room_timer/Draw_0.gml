draw_set_colour(c_white);
draw_rectangle(525, 182, 808, 580, false);
draw_set_colour(c_green);
draw_rectangle(540, 210, 804, 540,false);

draw_set_font(font_menu_larger); // standaard font
draw_set_color(c_white);

draw_text(671, 255, "score blauwe truck");//score groene truck
draw_text(671, 275, string(global.punten_totaal_wagen_blauw))
draw_text(671, 385, "score groene truck");// score blauwe truck
draw_text(671, 405,string(global.punten_totaal_wagen_groen))


