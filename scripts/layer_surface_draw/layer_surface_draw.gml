function layer_surface_draw() {
	if event_type == ev_draw
	   {
	   if event_number == 0 {
		    if (surface_get_target() != application_surface) surface_reset_target();
			//Paralax
			for(var i = 1; i <= 32; i += 4)
			{
				var scale = (camera_get_view_width(view_camera[1])+i)/display_get_gui_width();
				draw_surface_ext(global.groundSurface,camera_get_view_x(view_camera[1])-i/2,camera_get_view_y(view_camera[1])-(i/2)/(1920/1080),scale,scale,0,c_white,1);
			}
		
			var _x = camera_get_view_x(view_camera[1]);
			var _y = camera_get_view_y(view_camera[1]);
			var _w = camera_get_view_width(view_camera[1]);
			var _h = camera_get_view_height(view_camera[1]);
		
			var inFront = 32;
			var scale = (_w+inFront)/_w;
		
			draw_surface_part_ext(global.inFrontSurface,_x,_y,_w,_h,_x-inFront/2,_y-(inFront/2)/(1920/1080),scale,scale,c_white,1);
		
			surface_set_target(global.groundSurface);
			draw_clear_alpha(c_black,0);
			surface_reset_target();
			surface_set_target(global.inFrontSurface);
			draw_clear_alpha(c_black,0);
			surface_reset_target();
		}
	}


}
