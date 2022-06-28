/// @desc



if(alarm[0] <= 0)
{
	if(phase == 0)
	{
		var margin = 256;
		
		active = false;
		with(obj_firefly)
		{
			if(targetplayer) or (bottle == id)
			{
				other.active = true;
			}
		}
	
		if(fireflies == 0)
		{
			if(active)
			image_alpha = (margin-min(margin,point_distance(x,y,oPlayer.x,oPlayer.y)))/margin;
			else
			image_alpha = min((margin-min(margin,point_distance(x,y,oPlayer.x,oPlayer.y)))/margin,image_alpha);
		}
		else
		image_alpha = 1;
		
		if(fireflies == TotalFireflies) and (alarm[0] <= 0)
		{
			alarm[0] = room_speed/4;
		}
	}
}

if(phase == 1)
{
	var margin = 3;
	x = xstart+random_range(-margin,margin);
	y = ystart+random_range(-margin,margin);
		
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed/2;
	}
}