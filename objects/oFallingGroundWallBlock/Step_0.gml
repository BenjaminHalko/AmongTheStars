/// @desc
if(oPause.pause) exit;
if(instance_exists(oGhost) and instance_exists(oGhostRecorder))
{
	ghosttime = oGhostRecorder.time;
}
var t = 0.01;
if(instance_exists(oGhost))
var time = t/ghosttime;
else
var time = t;
image_alpha = Approch(image_alpha,1,time);
image_speed = 0;
image_index = 0;
if(image_alpha != 1)
{
	falling = false;
	fall = false;
}

if(cave) image_index = 1;
if(lava) image_index = 2;
if(special) image_index = 3;
if(falling) and (!fall)
{
	var distance = 10;
	var s = 0.05;
	if(instance_exists(oGhost))
	var spd = s/ghosttime;
	else
	var spd = s;
	angle = 180 + Wave(180-distance,180+distance,spd,0);
	ScreenShake(1,5);
	
	if(alarm[1] <= 0)
	{
		var t = room_speed/2;
		if(instance_exists(oGhost))
		var time = t/ghosttime;
		else
		var time = t;
		
		if(time < 1) time = 1;
		
		alarm[1] = time;
	}
}
else
{
	if(!instance_exists(oWallBlockActivate))
	{
		falling = true;
	}
}

if(fall)
{
	if(instance_exists(oGhost))
	{
		angle += 5*ghosttime;
		grv += 0.01*ghosttime;
		grv *= 1.01*ghosttime;
		y += grv*ghosttime;
	}
	else
	{
		angle += 5;
		grv += 0.01;
		grv *= 1.01;
		y += grv;
	}
}