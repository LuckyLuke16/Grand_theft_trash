// --- SCOREBORD WAGEN 1 (Links) ---
var inst1 = instance_find(Ovuilniswagen1, 0); // Zoek de eerste instance van wagen 1

if (inst1 != noone) {
    // Achtergrondje...
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(10, 10, 250, 80, false);
    draw_set_alpha(1);

    draw_set_color(c_white);
    draw_text(20, 20, "SPELER 1 (Pijltjes)");
    
    // Check of de variabele al bestaat voordat we hem tekenen
    if (variable_instance_exists(inst1, "punten_totaal")) {
        draw_set_color(c_yellow);
        draw_text(20, 40, "Punten: " + string(inst1.punten_totaal));
    }
    
    draw_set_color(c_lime);
    draw_text(20, 60, "Wagen: " + string(inst1.zakken_in_wagen) + " /10");
}

// --- SCOREBORD WAGEN 2 (Rechts) ---
var inst2 = instance_find(Ovuilniswagen2, 0);

if (inst2 != noone) {
    var rx = display_get_gui_width() - 250;
    
    draw_set_color(c_black);
    draw_set_alpha(0.5);
    draw_rectangle(rx, 10, rx + 240, 80, false);
    draw_set_alpha(1);

    draw_set_color(c_white);
    draw_text(rx + 10, 20, "SPELER 2 (WASD)");
    
    if (variable_instance_exists(inst2, "punten_totaal")) {
        draw_set_color(c_yellow);
        draw_text(rx + 10, 40, "Punten: " + string(inst2.punten_totaal));
    }
    
    draw_set_color(c_lime);
    draw_text(rx + 10, 60, "Wagen: " + string(inst2.zakken_in_wagen) + " /10");
}