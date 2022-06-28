/// @desc
if((sizew == display_get_width()) and (sizeh == display_get_height())) or (os_type == os_linux)
{
	//window_set_fullscreen(true);
	sprite_index = sPlayerR;
	var lay_id = layer_get_id("Ground");
	layer_hspeed(lay_id,-6);
	with(oInt)
	{
		alpha = Approch(alpha,1,0.01);
	}
}
else if(alarm[0] <= 1)
{
	var percentsize = 100;
	sizew = Approch(sizew,display_get_width(),max(1,room_width/percentsize));
	sizeh = Approch(sizeh,display_get_height(),max(1,room_height/percentsize));
	window_set_rectangle(display_get_width()/2-sizew/2,display_get_height()/2-sizeh/2,sizew,sizeh);
}