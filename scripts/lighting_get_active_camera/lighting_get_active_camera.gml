/// @desc Gets the active camera
/// @returns The active camera port [X, Y, Width, Height]

if(global.worldCustomCamera == undefined) {
	// Get active view camera
	if(instance_exists(oScreenshot))
	var camera = oScreenshot.screenshotCamera;
	else
	var camera = view_camera[1];
	var cameraX = camera_get_view_x(camera);
	var cameraY = camera_get_view_y(camera);
	var cameraW = camera_get_view_width(camera);
	var cameraH = camera_get_view_height(camera);
	return [cameraX, cameraY, cameraW, cameraH];
}

return global.worldCustomCamera;