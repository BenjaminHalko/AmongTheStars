vspeed = random_range(-0.1,-1);
image_speed = random_range(0.4,1);
var lay_id = layer_get_id("Ground");
var map_id = layer_tilemap_get_id(lay_id);
var data = tilemap_get_at_pixel(map_id, xstart, ystart);
var hue;
if(data != -1) hue = 17; else hue = 180;
image_blend = make_color_hsv(hue,100,100);