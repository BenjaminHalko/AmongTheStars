/// @desc
Inputs();
if(stop) and (alarm[0] <= 0)
{
	pitch = Approch(pitch,0,pitchspd);
	audio_sound_pitch(snTitle,pitch);
	if(pitch == 0) and (alarm[1] <= 0)
	{
		alarm[1] = time;
	}
	dissappearalpha = pitch-(1-pitch)*1.1;
	
	if(dissappearalpha <= 0) and (!instance_exists(oTitleTransition))
	{
		alarm[0] = room_speed;
		instance_create_layer(0,0,"Instances",oTitleTransition);
	}
}

if(key_jump) and (alpha >= 0.75)
{
	if(!stop)
	{
		audio_play_sound(snGotStar,2,false);
	}
	stop = true;
}