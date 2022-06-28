/// @desc
if(Load("Objects","House Door",0) == 2) instance_destroy();
else if(Load("Objects","House Door",0) == 1)
{
	phase = 7;
	oPlayer.image_alpha = 0;
	Save("Objects","House Door",2);
}
else
{
	phase = 0;
	star = instance_nearest(x,y,oStar);
	star.notAllowedToCollide = true;
}
yscale = 0;