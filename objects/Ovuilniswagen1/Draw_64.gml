// 1. Kies een kleur voor de tekst
draw_set_color(c_yellow);
draw_set_font(Font_game);

// 2. Teken de totale score
draw_text(40, 20, "SCORE: " + string(punten_totaal));

// 3. Teken de status van de wagen (optioneel, maar erg handig)
draw_set_color(c_white);
draw_text(60, 40, "WAGEN: " + string(zakken_in_wagen) + " / " + string(max_capaciteit));
