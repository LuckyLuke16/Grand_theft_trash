// --- BEWEGING ---
var up    = keyboard_check(vk_up);
var down  = keyboard_check(vk_down);
var left  = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var shift = keyboard_check_pressed(vk_shift);

if (up)    speed += acc;
if (down)  speed -= acc;
if (left)  direction += speed * turnradius;
if (right) direction -= speed * turnradius;

if (!up && !down) friction = 0.05; else friction = 0;
speed = clamp(speed, backwardspd, forwardspd);
image_angle = direction;

// --- AFVAL PAKKEN ---
var afval = instance_nearest(x, y, afval_high);
if (afval != noone && point_distance(x, y, afval.x, afval.y) < 60) {
    if (shift && zakken_in_wagen < max_capaciteit) {
        instance_destroy(afval);
        zakken_in_wagen += 1;
    }
}

// --- INLEVEREN ---
// 1. Zoek de dichtstbijzijnde recycler
var recycler = instance_nearest(x, y, Orecycler);

// 2. Check of hij bestaat en of je dichtbij genoeg bent
if (recycler != noone && point_distance(x, y, recycler.x, recycler.y) < 100) {
    
    // 3. Gebruik de juiste actie-toets (E voor wagen 2, Shift voor wagen 1)
    // Zorg dat deze variabelen bovenin je Step Event zijn gedefinieerd!
    if (vk_shift && zakken_in_wagen > 0) {
        
        // 4. Punten berekenen
        var extra_punten = zakken_in_wagen * 10;
        
        // 5. Toevoegen aan de EIGEN score van deze specifieke wagen
        punten_totaal += extra_punten;
        
        // 6. Wagen weer leegmaken
        zakken_in_wagen = 0;
        
        show_debug_message("Succesvol ingeleverd! Punten erbij: " + string(extra_punten));
    }
}
