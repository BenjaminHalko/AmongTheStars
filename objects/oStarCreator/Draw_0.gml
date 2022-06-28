/// @desc Draw Stars
if(room == rGame) or (room == rExtra) or (room == rInt)
{
	for(var i=0;i<staramount;i++)
	{
		if(room == rGame)
		draw_sprite_ext(image,subimg[i],xx[i]+(camera_get_view_x(view_camera[1])/1.1),min(yy[i]+(camera_get_view_y(view_camera[1])/1.1),1600),scale[i],scale[i],angle[i],colour[i],alpha[i]);
		else
		draw_sprite_ext(image,subimg[i],xx[i],yy[i],scale[i],scale[i],angle[i],colour[i],alpha[i]);
	}
}