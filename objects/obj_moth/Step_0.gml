/// @desc
if(spd <= 3)
{
	spd = random(5);
	var lanturn = instance_nearest(x,y,obj_spot);
	var dirextra = choose(random_range(-10,10),random_range(-30,30),random_range(-50,50));
	newdir = point_direction(x,y,lanturn.x,lanturn.y)+max(dirextra,5*sign(dirextra));
}

dir = ApprochWrap(dir,newdir,5,0,360);
spd = Approch(spd,0,0.2);
	
x += lengthdir_x(spd,dir);
y += lengthdir_y(spd,dir);

image_angle = dir-90;

polygon = polygon_from_instance(id,image_angle);

if(alarm[0] <= 0) alarm[0] = room_speed/sprite_get_speed(sprite_index);