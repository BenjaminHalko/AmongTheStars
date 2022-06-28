/// @description Update Camera


//Update Destination
var cameraboundry = instance_position(oPlayer.x,oPlayer.y,oCameraBoundry);

if(cameraboundry != noone) and ((follow == noone) or (follow.object_index != oTurkeyBit))
{
	sizeh = Approch(sizeh,cameraboundry.sprite_height,15);
	sizew = sizeh*(1920/1080);
	follow = instance_nearest(x,y,oCameraCenter);
	if(follow != noone)
	{
		xTo = follow.x;
		yTo = cameraboundry.y+sizeh/2;
	}
}
else
{
	if(follow.object_index != oTurkeyBit)
	follow = oPlayer;
	sizew = Approch(sizew,sizewnormal,15);
	sizeh = sizew/(1920/1080);
	
	if (instance_exists(follow))
	{
		xTo = follow.x;
		yTo = follow.y;
	
		if(instance_exists(oGhost))
		{
			x = xTo;
			y = yTo;
		}
	}
}

//Update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;

//Screen Shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

view_w_half = sizew/2;
view_h_half = sizeh/2;

//Update camera view
if(room == rGame)
{
if(pause) 
{
	if(view_xport[1] == 0)
	{
		alpha = Approch(alpha,1,0.1);
	}
	else
	{
		alpha = Approch(alpha,0,0.1);
	}
	
	if(alpha == 1)
	{
		oPause.pause = true;
		var margin = 64;
		view_xport[1] = 1920-1080-margin*2+margin*2;
		view_yport[1] = margin;
		view_wport[1] = 1080-margin*2;
		view_hport[1] = 1080-margin*2;
		
		if(!global.map) view_set_visible(1,false);
		camera_set_view_pos(cam,0,0);
		camera_set_view_size(cam,room_width,room_height);
	}
}
else
{
	if(view_xport[1] != 0)
	{
		alpha = Approch(alpha,1,0.1);
	}
	else
	{
		alpha = Approch(alpha,0,0.1);
	}
	
	if(alpha == 1)
	{
		oPause.pause = false;
		view_set_visible(1,true);
		view_xport[1] = 0;
		view_yport[1] = 0;
		view_wport[1] = 1920;
		view_hport[1] = 1080;
	}
}

if(!oPause.pause)
{
	camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
	camera_set_view_size(cam,sizew,sizeh);
}
}
else
{
	camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
	camera_set_view_size(cam,sizew,sizeh);
}