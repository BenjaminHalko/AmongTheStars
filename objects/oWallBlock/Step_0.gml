/// @desc
if(instance_number(oStar) <= 1)
{
	for(var i = 0; i < radiusnum; i++)
	{
		radius[i] += 5;
		if(radius[i] > room_width)
		{
			radius[i] = 0;
		}
	}
	if(dissappear)
	{
		image_alpha = Approch(image_alpha,0,0.01);
		if(image_alpha == 0)
		{
			instance_destroy();
		}
		with(oWallBlockActivate) instance_destroy();
	}
}
else
{
	dissappear = false;
}