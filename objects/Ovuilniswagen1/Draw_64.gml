// 1. Kies een kleur voor de tekst
draw_set_color(c_yellow);

// 2. Teken de totale score
draw_text(20, 20, "SCORE: " + string(global.punten));

// 3. Teken de status van de wagen (optioneel, maar erg handig)
draw_set_color(c_white);
draw_text(20, 40, "WAGEN: " + string(zakken_in_wagen) + " / " + string(max_capaciteit));