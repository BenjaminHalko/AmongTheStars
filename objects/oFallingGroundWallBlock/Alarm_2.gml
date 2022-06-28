/// @desc 
if(place_free(xstart,ystart))
{
	image_alpha = 0;
	x = xstart;
	y = ystart;
	angle = 0;
	fall = false;
	falling = false;
	grv = 1;
}
else
{
	alarm[2] = 5;
}