// --- 1. INPUT ---
var up    = keyboard_check(ord("W"));
var down  = keyboard_check(ord("S"));
var left  = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
// BELANGRIJK: Hier moet keyboard_check_pressed bij!
var actie_toets = keyboard_check_pressed(ord("E")); 

// --- 2. BEWEGING ---
if (up)    speed += acc;
if (down)  speed -= acc;

// Sturen (alleen als de wagen rijdt)
if (left)  direction += speed * turnradius;
if (right) direction -= speed * turnradius;

// Wrijving en Limieten
if (!up && !down) friction = 0.05; else friction = 0;
speed = clamp(speed, backwardspd, forwardspd);
image_angle = direction;

// --- 3. AFVAL PAKKEN ---
var afval_h = instance_nearest(x, y, afval_high);

// We checken of afval bestaat en of we dichtbij zijn
if (afval_h != noone && point_distance(x, y, afval_h.x, afval_h.y) < 60) {
    if (actie_toets && zakken_in_wagen < max_capaciteit) {
        instance_destroy(afval_h);
        zakken_in_wagen += 1;
        show_debug_message("Wagen 2 pakte afval! Totaal: " + string(zakken_in_wagen));
    }
}
var afval_med = instance_nearest(x, y, afval_medium);

// We checken of afval bestaat en of we dichtbij zijn
if (afval_med != noone && point_distance(x, y, afval_med.x, afval_med.y) < 60) {
    if (actie_toets && zakken_in_wagen < max_capaciteit) {
        instance_destroy(afval_med);
        zakken_in_wagen += 2;
        show_debug_message("Wagen 2 pakte afval! Totaal: " + string(zakken_in_wagen));
    }
}
var afval_l = instance_nearest(x, y, afval_low);

// We checken of afval bestaat en of we dichtbij zijn
if (afval_l != noone && point_distance(x, y, afval_l.x, afval_l.y) < 60) {
    if (actie_toets && zakken_in_wagen < max_capaciteit) {
        instance_destroy(afval_l);
        zakken_in_wagen += 1;
        show_debug_message("Wagen 2 pakte afval! Totaal: " + string(zakken_in_wagen));
    }
}

// --- 4. INLEVEREN ---
// 1. Zoek de dichtstbijzijnde recycler
var recycler = instance_nearest(x, y, Orecycler);

// 2. Check of hij bestaat en of je dichtbij genoeg bent
if (recycler != noone && point_distance(x, y, recycler.x, recycler.y) < 100) {
    
    // 3. Gebruik de juiste actie-toets (E voor wagen 2, Shift voor wagen 1)
    // Zorg dat deze variabelen bovenin je Step Event zijn gedefinieerd!
    if (actie_toets && zakken_in_wagen > 0) {
        
        // 4. Punten berekenen
        var extra_punten = zakken_in_wagen * 10;
        
        // 5. Toevoegen aan de EIGEN score van deze specifieke wagen
        punten_totaal += extra_punten;
        
        // 6. Wagen weer leegmaken
        zakken_in_wagen = 0;
        
        show_debug_message("Succesvol ingeleverd! Punten erbij: " + string(extra_punten));
    }
}