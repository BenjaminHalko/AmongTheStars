/// @desc Screenshot(xstart,ystart,width,height,screenshotName)
/// @arg xstart
/// @arg ystart
/// @arg width
/// @arg height
/// @arg screenshotName
function Screenshot(argument0, argument1, argument2, argument3, argument4) {

	with(instance_create_depth(0,0,-100000,oScreenshot))
	{
		xStart = argument0;
		yStart = argument1;
		width = argument2;
		height = argument3;
		screenshotName = argument4;
	}


}
