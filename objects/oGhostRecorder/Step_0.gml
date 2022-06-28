if(oPause.pause) exit;
if(ghostRecordFrames < maxframes-instance_number(oStar)) and (ghostRecord) and (instance_exists(pPlayer))
{
	if(instance_exists(oGhost)) or ((framesave) and (!instance_exists(oGhost)))
	{
		if(alarm[0] <= 0)
		alarm[0] = 1;
	}
	else
	{
		if(alarm[0] <= 0)
		alarm[0] = time;
	}
}
framesave = false;