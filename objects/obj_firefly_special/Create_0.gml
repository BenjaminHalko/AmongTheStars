/// @desc Creates a light using variables
if(ds_list_find_index(global.fireflymap,id) == -1)
ds_list_add(global.fireflymap,id);
var len = 5;
dir = random(360);
hsp = lengthdir_x(len,dir);
vsp = lengthdir_y(len,dir);
image_speed = 0;
image_alpha = 1;