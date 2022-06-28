/// @desc ChangeMusic
/// @arg music
/// @arg fade

if(instance_exists(oMusic))
{
	if(oMusic.music != argument0)
	oMusic.fade = argument1;
	oMusic.music = argument0;
}