/// @desc
var size = floor(image_yscale);
var sizefraction = frac(image_yscale);
var height = 64;

if(image_angle == 0)
{
	for(var i = -1; i < size; i++)
	{
		draw_sprite_ext(sLockedDoorWallDesign,0,x,y-(i*height)-(sizefraction*height),1,1,image_angle,image_blend,image_alpha);
	}
}
else if(image_angle == 90)
{
	for(var i = -1; i < size; i++)
	{
		draw_sprite_ext(sLockedDoorWallDesign,0,x-(i*height)-(sizefraction*height),y,1,1,image_angle,image_blend,image_alpha);
	}
}
else if(image_angle == 180)
{
	for(var i = -1; i < size; i++)
	{
		draw_sprite_ext(sLockedDoorWallDesign,0,x,y+((i+1)*height)+(sizefraction*height),1,1,image_angle-180,image_blend,image_alpha);
	}
}
else if(image_angle == 270)
{
	for(var i = -1; i < size; i++)
	{
		draw_sprite_ext(sLockedDoorWallDesign,0,x+((i+1)*height)+(sizefraction*height),y,1,1,image_angle-180,image_blend,image_alpha);
	}
}