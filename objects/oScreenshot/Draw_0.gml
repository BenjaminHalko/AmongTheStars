/// @desc
if(yy >= height)
{
	var _surface = surface_create(width,height);
	surface_set_target(_surface);
	for(var i = 0; i < screenshotnumber; i++)
	{
		draw_sprite(tempSprite[i],0,0,0);
	}
	surface_reset_target();
	var _sprite = sprite_create_from_surface(_surface,0,0,width,height,false,false,0,0);
	sprite_save(_sprite,0,screenshotName);
	sprite_delete(_sprite);
	surface_free(_surface);
	camera_destroy(screenshotCamera);
	view_set_visible(viewNumber,false);
	instance_destroy();
}