/// @desc
light[| eLight.X] = x;
light[| eLight.Y] = y;

if(hsp == 0) and (vsp == 0)
{
	if(point_distance(x,y,xstart,ystart) <= 256)
	{
		dir = choose(point_direction(x,y,xstart,ystart)+random_range(-30,30),random(359));
		var len = random(3);
	}
	else
	{
		dir = point_direction(x,y,xstart,ystart)+random_range(-10,10);
		var len = random(4);
	}
	
	hsp = lengthdir_x(len,dir);
	vsp = lengthdir_y(len,dir);
}

hsp = Approch(hsp,0,0.05);
vsp = Approch(vsp,0,0.05);
	
x += hsp;
y += vsp;