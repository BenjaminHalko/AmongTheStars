/// @desc
if(dissappear)
{
	image_alpha = Approch(image_alpha,0,spd);
	if(image_alpha == 0)
	{
		oFlash.mode = "Dissappear";
		instance_destroy();
	}

	x = Approch(x,oPlayer.x-4,spd);
	y = Approch(y,oPlayer.y+16,spd);
}
image_angle -= 5;