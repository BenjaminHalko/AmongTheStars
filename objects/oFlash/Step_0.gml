/// @desc
if(mode == "Dissappear")
{
	if(alpha != 1)
	{
		alpha = Approch(alpha,1,spd);
	}
	else if(alarm[0] <= 0)
	{
		alarm[0] = time;
	}
}

if(mode == "Appear")
{
	if(alpha != 0)
	{
		alpha = Approch(alpha,0,spd);
	}
	else
	{
		mode = "Normal";
	}
}