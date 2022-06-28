if(oPause.pause) exit;
var dis = 5;
y = Wave(ystart+dis,ystart-dis,2,0);
if(dissappear)
{
	image_alpha = Approch(image_alpha,0,spd);
	if(image_alpha == 0) instance_destroy();

	x = Approch(x,oPlayer.x-4,spd);
	y = Approch(y,oPlayer.y+16,spd);
}