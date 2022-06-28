/// @desc
active = false;
angle = 270;
dir = 270;
previousdir = dir;
follow = oPlayerSpecialZone;
x = follow.x;
y = follow.y;
cam = view_camera[0];
view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;
turnspd = 0.5;
turnincrease = 0.1;
turnmin = 0.3;
turnmax = 1;

image = 0;
backgroundspd = 0.25;
backgroundindex = 7;

bubbleY= 0;
cloudX = 0;
backgroundX = 0;

cloudImages[0] = sSpecialZoneClouds1;
cloudImages[1] = sSpecialZoneClouds2;
cloudImages[2] = sSpecialZoneClouds3;
cloudImages[3] = sSpecialZoneClouds4;
cloudImages[4] = sSpecialZoneClouds5;
cloudImages[5] = sSpecialZoneClouds6;
alarm[0] = room_speed*15;

with(all)
{
	if(sprite_index != -1)
	{
		angle = other.angle;
	}
}

if(!active)
{
	with(all)
	{
		if(sprite_index != -1)
		{
			var len = point_distance(x,y,oPlayerSpecialZone.x,oPlayerSpecialZone.y);
			_Startdir = point_direction(x,y,oPlayerSpecialZone.x,oPlayerSpecialZone.y);
			phy_position_x = oPlayerSpecialZone.x-lengthdir_x(sign(len)*1000,_Startdir);
			phy_position_y = oPlayerSpecialZone.y-lengthdir_y(sign(len)*1000,_Startdir);
		}
	}
	alarm[2] = room_speed*2;
	physics_world_gravity(0,0);
}

finish = false;
win = false;