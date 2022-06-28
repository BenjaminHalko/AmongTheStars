/// @desc
/*
light[| eLight.X] = x;
light[| eLight.Y] = y;

if(abs(hsp) <= 4.5) and (abs(vsp) <= 4.5)
{
	dir = point_direction(x,y,oPlayer.x,oPlayer.y)+random_range(-30,30);
	var len = random(6);
		
	hsp = lengthdir_x(len,dir);
	vsp = lengthdir_y(len,dir);
}

	
	hsp = Approch(hsp,0,abs(lengthdir_x(0.05,dir)));
	vsp = Approch(vsp,0,abs(lengthdir_y(0.05,dir)));
	
x += hsp;
y += vsp;