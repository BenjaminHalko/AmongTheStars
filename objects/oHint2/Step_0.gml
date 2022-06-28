if(dissappear)
{
	image_alpha = Approch(image_alpha,0,spd);
	if(image_alpha == 0) instance_destroy();
}
else if (oPlayer.walljumpdelay != 0) dissappear = true;