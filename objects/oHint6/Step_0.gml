/// @desc
if(destroy)
{
	image_alpha = Approch(image_alpha,0,0.05);
	if(image_alpha == 0) instance_destroy();
}