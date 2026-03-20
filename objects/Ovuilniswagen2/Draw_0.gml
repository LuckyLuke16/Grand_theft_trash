// 1. Teken eerst de vrachtwagen zelf
draw_self();

// 2. Alleen het balkje tekenen als we daadwerkelijk zakken hebben
if (zakken_in_wagen > 0) {
    var balk_breedte = 40;  // Hoe breed het balkje is in pixels
    var balk_hoogte = 6;    // Hoe hoog het balkje is
    var afstand_boven_wagen = 30; // Hoe hoog boven de wagen hij zweeft

    // Bereken de positie (gecentreerd boven de wagen)
    var x1 = x - (balk_breedte / 2);
    var y1 = y - afstand_boven_wagen;
    var x2 = x + (balk_breedte / 2);
    var y2 = y1 + balk_hoogte;

    // 3. Teken de achterkant (leeg balkje - meestal grijs of rood)
    draw_set_color(c_black);
    draw_rectangle(x1 - 1, y1 - 1, x2 + 1, y2 + 1, false); // Een klein zwart randje
    draw_set_color(c_dkgray);
    draw_rectangle(x1, y1, x2, y2, false);

    // 4. Teken de vulling (bijv. groen of oranje)
    // We berekenen hoe ver de balk gevuld moet zijn
    var vul_breedte = (zakken_in_wagen / max_capaciteit) * balk_breedte;
    
    // Kleur veranderen als hij bijna vol is
    if (zakken_in_wagen >= max_capaciteit) {
        draw_set_color(c_red); // Rood als hij vol is
    } else {
        draw_set_color(c_lime); // Groen als er nog plek is
    }
    
    draw_rectangle(x1, y1, x1 + vul_breedte, y2, false);
}	

