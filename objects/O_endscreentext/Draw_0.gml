// Achtergrond
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// Titel
draw_set_color(c_white);
draw_set_font(Font_game); // verander naar jouw font
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Winnaar bepalen
if (global.punten_totaal_wagen_groen > global.punten_totaal_wagen_blauw) {
    draw_set_color(c_green);
    draw_text(room_width/2, room_height/2 - 60, "Groen Wint!");
} else if (global.punten_totaal_wagen_blauw > global.punten_totaal_wagen_groen) {
    draw_set_color(make_color_rgb(0, 150, 255));
    draw_text(room_width/2, room_height/2 - 60, "Blauw Wint!");
} else {
    draw_set_color(c_yellow);
    draw_text(room_width/2, room_height/2 - 60, "Gelijkspel!");
}

// Scores weergeven
draw_set_color(c_green);
draw_text(room_width/2 - 150, room_height/2 + 20, "Groen: " + string(global.punten_totaal_wagen_groen));

draw_set_color(make_color_rgb(0, 150, 255));
draw_text(room_width/2 + 150, room_height/2 + 20, "Blauw: " + string(global.punten_totaal_wagen_blauw));

// Opnieuw spelen
draw_set_color(c_white);
draw_set_font(-1);
draw_text(room_width/2, room_height/2 + 120, "Druk op Enter om opnieuw te spelen");