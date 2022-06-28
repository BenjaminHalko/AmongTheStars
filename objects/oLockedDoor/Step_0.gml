/// @desc
if(gotkey) and (instance_place(x+31,y+32,oKey) != noone)
{
	if(!switchedlocking)
	{
		switchedlocking = true;
		uplocked = !uplocked;
		downlocked = !downlocked;
		leftlocked = !leftlocked;
		rightlocked = !rightlocked;
		
		if(uplocked) and (up)
		{
			uplockedsensor = noone;
			var yy = 0;
			while(uplockedsensor == noone)
			{
				uplockedsensor = instance_place(doorup.x,doorup.y-yy,oLockedDoorBarrier);
				yy++;
			}
		}
		
		if(downlocked) and (down)
		{
			downlockedsensor = noone;
			var yy = 0;
			while(downlockedsensor == noone)
			{
				downlockedsensor = instance_place(doordown.x,doordown.y+yy,oLockedDoorBarrier);
				yy++;
			}
		}
		
		if(leftlocked) and (left)
		{
			leftlockedsensor = noone;
			var xx = 0;
			while(leftlockedsensor == noone)
			{
				leftlockedsensor = instance_place(doorleft.x-xx,doorleft.y,oLockedDoorBarrier);
				xx++;
			}
		}
		
		if(rightlocked) and (right)
		{
			rightlockedsensor = noone;
			var xx = 0;
			while(rightlockedsensor == noone)
			{
				rightlockedsensor = instance_place(doorright.x+xx+64,doorright.y,oLockedDoorBarrier);
				xx++;
			}
		}
	}
	
	if(up) and (!stopup)
	{
		ScreenShake(1,1);
		if(!uplocked)
		{
			doorup.yy = Approch(doorup.yy,doorup.y,doormovespd);
			if(doorup.yy == doorup.y) stopup = true;
			
			if(doorup.y - doorup.yy <= 30) delayrightbridge = false;
		}
		else
		{
			doorup.yy = Approch(doorup.yy,uplockedsensor.bbox_bottom,doormovespd);
			if(doorup.yy == uplockedsensor.bbox_bottom) stopup = true;
		}
	}
	
	if(down) and (!stopdown)
	{
		ScreenShake(1,1);
		if(!downlocked)
		{
			doordown.yy = Approch(doordown.yy,doordown.y,doormovespd);
			if(doordown.yy == doordown.y) stopdown = true;
		}
		else
		{
			doordown.yy = Approch(doordown.yy,downlockedsensor.bbox_top,doormovespd);
			if(doordown.yy == downlockedsensor.bbox_top) stopdown = true;
		}
	}
	
	if(left) and (!stopleft)
	{
		ScreenShake(1,1);
		if(!leftlocked)
		{
			doorleft.xx = Approch(doorleft.xx,doorleft.x,doormovespd);
			if(doorleft.xx == doorleft.x) stopleft = true;
		}
		else
		{
			doorleft.xx = Approch(doorleft.xx,leftlockedsensor.bbox_right-(64*2),doormovespd);
			if(doorleft.xx == leftlockedsensor.bbox_right-(64*2)) stopleft = true;
		}
	}
	
	if(right) and (!stopright) and ((!delayrightbridge) or (!up) or (rightlocked))
	{
		ScreenShake(1,1);
		if(!rightlocked)
		{
			doorright.xx = Approch(doorright.xx,doorright.x,doormovespd);
			if(doorright.xx == doorright.x) stopright = true;
		}
		else
		{
			doorright.xx = Approch(doorright.xx,rightlockedsensor.bbox_left+(64*2),doormovespd);
			if(doorright.xx == rightlockedsensor.bbox_left+(64*2)) stopright = true;
		}
	}
}