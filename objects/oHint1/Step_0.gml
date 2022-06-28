Inputs();
if(dissappear)
{
	image_alpha = Approch(image_alpha,0,spd);
	if(image_alpha == 0) instance_destroy();
}
else if(key_jump)
{
	dissappear = true;
}