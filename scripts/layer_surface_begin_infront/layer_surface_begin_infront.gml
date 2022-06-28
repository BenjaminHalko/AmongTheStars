if event_type == ev_draw
   {
   if event_number == 0 {
      if(!surface_exists(global.inFrontSurface)) global.inFrontSurface = surface_create(room_width,room_height);
	  surface_set_target(global.inFrontSurface);
	  camera_apply(view_camera[1]);
	  
	  if(oPause.pause) and (surface_get_target() != application_surface) surface_reset_target();
    }
}