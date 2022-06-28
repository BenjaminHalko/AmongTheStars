/// @desc
if(hit)
{
	if(alarm[0] <= 0)
	{
		alarm[0] = room_speed;
		oSpecialZoneSpin.turnspd = median(abs(oSpecialZoneSpin.turnspd)-oSpecialZoneSpin.turnincrease,oSpecialZoneSpin.turnmax,oSpecialZoneSpin.turnmin)*sign(oSpecialZoneSpin.turnspd);
	}
}