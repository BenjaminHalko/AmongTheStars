/// @desc
var allow = true;
with(oPlayerSpecialZone)
{
	if(place_meeting(x,y,oPeppermentTransparentActivatorStopper)) allow = false;
}
if(place_meeting(x,y,oPlayerSpecialZone)) and (allow)
{
	active = true;
}
else if(active)
{
	with(oPeppermentTransparent)
	{
		instance_change(oPepperment,true);
	}
	instance_destroy();
}