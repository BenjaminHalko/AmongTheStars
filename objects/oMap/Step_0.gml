/// @desc 
if(oPause.pause) exit;
if(dissappear)
{
	var xx = oPlayer.x-(4*oPlayer.image_xscale);
	var yy = oPlayer.y+16;
	if(image_alpha == 0) instance_destroy();
	spd += 0.05;
	x = Approch(x,xx,spd);
	y = Approch(y,yy,spd);
	image_xscale = min(1,point_distance(x,y,xx,yy)/20);
	image_yscale = min(1,point_distance(x,y,xx,yy)/20);
	if(!instance_exists(oGhost))
	{
		if(image_xscale == 0) instance_destroy();
	}
}