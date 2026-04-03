var scale_x = minimap_width / room_width;
var scale_y = minimap_height / room_height;

// Achtergrond van de minimap
draw_set_alpha(0.7);
draw_set_color(c_dkgray);
draw_rectangle(minimap_x, minimap_y, minimap_x + minimap_width, minimap_y + minimap_height, false);
draw_set_alpha(1);

// Rand
draw_set_color(c_white);
draw_rectangle(minimap_x, minimap_y, minimap_x + minimap_width, minimap_y + minimap_height, true);

// Wagen 1 (groen)
var w1 = instance_find(Ovuilniswagen1, 0);
if (w1 != noone) {
    draw_set_color(c_green);
    draw_circle(minimap_x + w1.x * scale_x, minimap_y + w1.y * scale_y, 4, false);
}

// Wagen 2 (blauw)
var w2 = instance_find(Ovuilniswagen2, 0);
if (w2 != noone) {
    draw_set_color(make_color_rgb(0, 150, 255));
    draw_circle(minimap_x + w2.x * scale_x, minimap_y + w2.y * scale_y, 4, false);
}

// Afval stipjes
var i = 0;
repeat (instance_number(afval_high)) {
    var a = instance_find(afval_high, i);
    draw_set_color(c_red);
    draw_rectangle(minimap_x + a.x * scale_x - 2, minimap_y + a.y * scale_y - 2,
                   minimap_x + a.x * scale_x + 2, minimap_y + a.y * scale_y + 2, false);
    i++;
}
i = 0;
repeat (instance_number(afval_medium)) {
    var a = instance_find(afval_medium, i);
    draw_set_color(c_orange);
    draw_rectangle(minimap_x + a.x * scale_x - 2, minimap_y + a.y * scale_y - 2,
                   minimap_x + a.x * scale_x + 2, minimap_y + a.y * scale_y + 2, false);
    i++;
}
i = 0;
repeat (instance_number(afval_low)) {
    var a = instance_find(afval_low, i);
    draw_set_color(c_yellow);
    draw_rectangle(minimap_x + a.x * scale_x - 2, minimap_y + a.y * scale_y - 2,
                   minimap_x + a.x * scale_x + 2, minimap_y + a.y * scale_y + 2, false);
    i++;
}

// Recycler
var rec = instance_nearest(room_width/2, room_height/2, Orecycler);
if (rec != noone) {
    draw_set_color(c_white);
	draw_circle(minimap_x + rec.x * scale_x, minimap_y + rec.y * scale_y, 5, false);
}