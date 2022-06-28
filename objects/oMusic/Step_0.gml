/// @desc
if(room != rInt) and false
{
	if(fade)
	{
		vol = Approch(vol,0,volspd);
		if(vol == 0) or (music = currentsoundmusic)
		{
			audio_stop_sound(currentsound);
			randomize();
			currentsound = global.song[music,max(0,irandom(array_length_2d(global.song,music)-1))];
			if(music == SPECIAL)
			song = audio_play_sound(currentsound,1,true);
			else
			song = audio_play_sound(currentsound,1,false);
			currentsoundmusic = music;
			soundpos = 0;
			fade = false;
		}
	}
	else if(room == rGame) or (currentsoundmusic != SPECIAL) or (vol != 1)
	{
		if(soundpos >= audio_sound_length(currentsound)-voltime) or (!audio_is_playing(currentsound))
		fade = true;
		soundpos += (1/room_speed)*controlledpitch;
		vol = Approch(vol,1,volspd);
	}

	if(pitch == npitch) and (pause)
	{
		pitch = 0.5;
	}

	if(instance_exists(oGhost))
	{
		pitch = 3;
	}
	else if(pitch != npitch) and (!pause)
	{
		pitch = npitch;
	}

	controlledpitch = Approch(controlledpitch,pitch,pitchspd);
	audio_sound_pitch(currentsound,controlledpitch);
	audio_sound_gain(currentsound,vol,1);

	if(instance_number(oStar) == 0) and (currentsound != global.song[END,0]) and (room == rGame)
	{
		ChangeMusic(END,true);
	}
}