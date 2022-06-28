global.groundSurface = noone;
global.inFrontSurface = noone;

layer_script_end(layer_get_id("Render"),layer_surface_draw);

layer_script_begin(layer_get_id("InFront"),layer_surface_begin_infront);

layer_script_begin(layer_get_id("FallingGround"),layer_surface_begin);
layer_script_end(layer_get_id("FallingGround"),layer_surface_end);

layer_script_begin(layer_get_id("LockedDoor"),layer_surface_begin);
layer_script_end(layer_get_id("LockedDoor"),layer_surface_end);

layer_script_begin(layer_get_id("Doors"),layer_surface_begin);
layer_script_end(layer_get_id("Doors"),layer_surface_end);

layer_script_begin(layer_get_id("Ground"),layer_surface_begin);
layer_script_end(layer_get_id("Ground"),layer_surface_end);

layer_script_begin(layer_get_id("Cave"),layer_surface_begin);
layer_script_end(layer_get_id("Cave"),layer_surface_end);

layer_script_begin(layer_get_id("Lava"),layer_surface_begin);
layer_script_end(layer_get_id("Lava"),layer_surface_end);

layer_script_begin(layer_get_id("DeepLava"),layer_surface_begin);
layer_script_end(layer_get_id("DeepLava"),layer_surface_end);