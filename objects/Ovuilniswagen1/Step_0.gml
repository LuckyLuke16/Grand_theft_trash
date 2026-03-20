// --- MOVEMENT ---
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

if (up_key)    speed += acc;    
if (down_key)  speed -= acc;

// Alleen sturen als je rijdt (ziet er realistischer uit)
if (left_key)  direction += speed * turnradius;
if (right_key) direction -= speed * turnradius;

// Remmen
if !up_key and !down_key {
    if (friction < 1) friction += 0.05; // Iets sneller remmen dan 0.001
} else {
    friction = 0;
}

// Speed limiter
speed = clamp(speed, backwardspd, forwardspd);
image_angle = direction;

// --- AFVAL OPPAKKEN ---
var afval = instance_nearest(x, y, afval_high);

// GEBRUIK 'afval.x' in plaats van 'afval_high.x'
if (afval != noone && point_distance(x, y, afval.x, afval.y) < 60) {
    if (keyboard_check_pressed(ord("E"))) {
        if (zakken_in_wagen < max_capaciteit) {
            instance_destroy(afval);
            zakken_in_wagen += 1;
            show_debug_message("Zak opgepakt! Totaal: " + string(zakken_in_wagen));
        } else {
            show_debug_message("Wagen is vol!");
        }
    }
}

// --- INLEVEREN BIJ RECYCLER ---
var recycler = instance_nearest(x, y, Orecycler);

// GEBRUIK 'recycler.x' in plaats van 'Orecycler.x'
if (recycler != noone && point_distance(x, y, recycler.x, recycler.y) < 80) {
    if (keyboard_check_pressed(ord("E")) && zakken_in_wagen > 0) {
        
        var verdiende_punten = zakken_in_wagen * 10;
        global.punten += verdiende_punten;
        zakken_in_wagen = 0; 
        
        show_debug_message("Ingeleverd! Totaal punten: " + string(global.punten));
    }
}





