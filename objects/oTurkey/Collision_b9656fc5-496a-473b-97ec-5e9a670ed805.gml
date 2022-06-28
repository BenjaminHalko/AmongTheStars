/// @desc 
dissappear = true;
if(!oPlayer.burst)
{
	with(oGhostRecorder)
	{
		SaveGhostData();
		instance_destroy();
	}
}
oPlayer.burst = true;