/// @desc

if(yy < height) and (alarm[0] < 1)
{
	screen_save_part(screenshotName,0,0,min(cameraWidth,width-xx),min(cameraHeight,height-yy));
	tempSprite[screenshotnumber] = sprite_add(screenshotName,1,false,false,xStart-xx,yStart-yy);
	file_delete(screenshotName);

	xx += cameraWidth;

	if(xx >= width)
	{
		xx = xStart;
		yy += cameraHeight;
	}
	camera_set_view_pos(screenshotCamera,xx,yy);
	screenshotnumber++;
	alarm[0] = 2;
}