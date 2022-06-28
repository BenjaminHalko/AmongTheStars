/// @desc Increase image index
for(var i=0;i<staramount;i++)
{
	angle[i] += random_range(0,0.1);
	if(timer[i] <= 0)
	{
		subimg[i] += 1;
		if(subimg[i] > totalsubimg)
		{
			timer[i] = random_range(0,room_speed*25);
			subimg[i] = 0;
		}
	}
	if(timer[i] > 0)
	{
		timer[i] -= random_range(1,5);
	}
	
	if(room == rInt) and (oPlayerIntro.sprite_index = sPlayerR)
	{
		xx[i] -= 5*scale[i];
		
		if(xx[i] < 30)
		{
			xx[i] = room_width+30;
		}
	}
}