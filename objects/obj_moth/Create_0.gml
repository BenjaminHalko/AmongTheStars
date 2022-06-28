/// @desc Creates a light using variables
event_inherited();
dir = 0;
spd = 0;
newdir = 0;
image_speed = 0;
image_index = irandom(image_number/2-1)*2;
index = irandom(1);
image_index += index;
image_angle = random(359);

polygon = polygon_from_instance(id,image_angle);