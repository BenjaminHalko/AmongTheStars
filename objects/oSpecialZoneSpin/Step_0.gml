/// @desc

if(active)
{
	if(finish) and (alarm[1] <= 0)
	{
		turnspd = 20*sign(turnspd);
		alarm[1] = room_speed;
	}
	angle = Wrap(angle-turnspd,0,360);
	
	with(all)
	{
		if(phy_active != undefined)
		{
			var object = oPlayerSpecialZone;
			var len = point_distance(phy_position_x,phy_position_y,object.x,object.y);
			var dir = point_direction(object.x,object.y,phy_position_x,phy_position_y);
		
			var _dir = Wrap(dir+other.turnspd,0,360);
		
			phy_position_x = object.x+lengthdir_x(len,_dir);
			phy_position_y = object.y+lengthdir_y(len,_dir);
			angle = other.angle;
		}
	}
}
else
{
	with(all)
	{
		if(sprite_index != -1)
		{
			phy_position_x = Approch(phy_position_x,xstart,min(10,abs(lengthdir_x(10,_Startdir-180))));
			phy_position_y = Approch(phy_position_y,ystart,min(10,abs(lengthdir_y(10,_Startdir-180))));
		}
	}
}

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

camera_set_view_pos(cam,x-view_w_half,y-view_h_half);