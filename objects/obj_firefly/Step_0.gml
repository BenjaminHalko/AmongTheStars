/// @desc
light[| eLight.X] = x;
light[| eLight.Y] = y;


if(!in) and (trapped)
{
	if(!instance_exists(bottle)) or ((bottle.fireflies >= 5))
	{
		trapped = false;
		bottle = noone;
	}
	else
	{
		var len = 7;
		dir = point_direction(x,y,bottle.x,bottle.y);
		x = Approch(x,bottle.x,abs(lengthdir_x(len,dir)));
		y = Approch(y,bottle.y,abs(lengthdir_y(len,dir)));
	
		if(x == bottle.x) and (y == bottle.y)
		{
			in = true;
			hsp = 0;
			vsp = 0;
			bottle.fireflies++;
			global.fireflys++;
		}
	}
}
else if(bottle != noone) and ((!instance_exists(bottle)) or (bottle.phase == 2))
{
	if(!gotdir1)
	{
		dir = random(360);
		gotdir1 = true;
		var len = 2;
		hsp = lengthdir_x(len,dir);
		vsp = lengthdir_y(len,dir);
	}
	else if(hsp == 0) and (vsp == 0)
	{
		dir = point_direction(x,y,oPlayer.x,oPlayer.y);
		var _len = 7;
		var margin = 96;
		
		image_alpha = min(margin,point_distance(x,y,oPlayer.x,oPlayer.y))/margin;
		
		x = Approch(x,oPlayer.x,abs(lengthdir_x(_len,dir)));
		y = Approch(y,oPlayer.y,abs(lengthdir_y(_len,dir)));
		
		if(x == oPlayer.x) and (y == oPlayer.y) and (alarm[0] <= 0)
		{
			alarm[0] = room_speed/2;
		}
	}
	else
	{
		var len = 7;
	}
}
else if((hsp == 0) and (vsp == 0) and ((!targetplayer) or (bottle != noone))) or ((abs(hsp) <= 1) and (abs(vsp) <= 1) and (targetplayer) and (bottle == noone))
{
	if(!trapped)
	{
		if(point_distance(x,y,oPlayer.x,oPlayer.y) <= 128)
		{
			targetplayer = true;
		}
		
		if(point_distance(x,y,oPlayer.x,oPlayer.y) >= 1080)
		{
			targetplayer = false;
		}
	
		if(targetplayer)
		{
			dir = point_direction(x,y,oPlayer.x,oPlayer.y)+random_range(-30,30);
			var len = random(5);
		}
		else
		{
			allowtargetplayer = true;
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
		}
		
		len = max(len,1);
	}
	else
	{
			var len = 1;
			dir = point_direction(x,y,bottle.x,bottle.y)+random_range(-50,50);
			
			if(bottle != noone)
			{
				image_alpha = bottle.image_alpha;
			}
	}
	
	hsp = lengthdir_x(len,dir);
	vsp = lengthdir_y(len,dir);
}

	
	hsp = Approch(hsp,0,0.05);
	vsp = Approch(vsp,0,0.05);
	
x += hsp;
y += vsp;