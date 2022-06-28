/// @desc
if((room == rGame) and (oPause.pause)) or (alarm[0] > 0) exit;
if(room == rGame)
{
	image_alpha = Approch(image_alpha,0,0.1);
}
else
image_alpha = Approch(image_alpha,0,0.25);
if(image_alpha == 0) instance_destroy();