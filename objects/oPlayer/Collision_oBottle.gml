/// @desc
otherobj = other;
with(obj_firefly)
{
	if(targetplayer) and (bottle == noone)
	{
		trapped = true;
		bottle = other.otherobj;
	}
}