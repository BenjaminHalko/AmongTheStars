/// @desc

if(hit)
{
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed;
		oSpecialZoneSpin.turnspd *= -1; 
	}
	
	if(alarm[1] <= 0) alarm[1] = room_speed/7;
}