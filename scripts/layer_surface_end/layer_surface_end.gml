function layer_surface_end() {
	if event_type == ev_draw
	   {
	   if event_number == 0 {
			 if (surface_get_target() != application_surface) surface_reset_target();
		}
	}


}
