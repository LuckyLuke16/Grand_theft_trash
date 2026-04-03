
draw_set_color(c_yellow);
draw_set_font(font_menu);

// 2. Teken de totale score
draw_text(3125, 100, "SCORE: " + string(global.punten_totaal_wagen_blauw));

// 3. Teken de status van de wagen (optioneel, maar erg handig)
draw_set_color(c_white);
draw_text(3200, 200, "WAGEN: " + string(zakken_in_wagen) + " / " + string(max_capaciteit));
