function layer_surface_begin() {
	if event_type == ev_draw
	   {
	   if event_number == 0 {
	      if(!surface_exists(global.groundSurface)) global.groundSurface = surface_create(surface_get_width(application_surface),surface_get_height(application_surface));
		  surface_set_target(global.groundSurface);
		  camera_apply(view_camera[1]);
	  
		  if(oPause.pause) and (surface_get_target() != application_surface) surface_reset_target();
	    }
	}


}
