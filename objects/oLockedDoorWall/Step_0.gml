/// @desc
if(image_angle == 0) or (image_angle == 180)
{
	image_yscale = (max(yy,ystart) - min(yy,ystart))/sprite_get_height(sprite_index);
	
}
else
{
	image_yscale = (max(xx,xstart) - min(xx,xstart))/sprite_get_height(sprite_index);
}