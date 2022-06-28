/// @desc
#macro GRASS 0
#macro CAVE 1
#macro LAVA 2
#macro DEEP 3
#macro END 4
#macro SPECIAL 5
#region Variables
soundpos = 0;
pitchspd = 0.05;
pause = false;
currentsound = snBackgroundGrass1;
currentsoundmusic = GRASS;
if(room==rExtra) npitch = 1.5; else npitch = 1;
pitch = npitch;
controlledpitch = pitch;
music = GRASS;
vol = 0;
volspd = 0.0025;
fade = false;
var i = 0;
voltime = 0;
song = noone;
while(i != 1)
{
	i = Approch(i,1,volspd);
	voltime++;
}
voltime/=room_speed;
#endregion

#region Music Variables
global.song[GRASS,0] = snBackgroundGrass1;
global.song[GRASS,1] = snBackgroundGrass2;
global.song[GRASS,2] = snBackgroundGrass3;
global.song[CAVE,0] = snBackgroundCave1;
global.song[CAVE,1] = snBackgroundCave2;
global.song[CAVE,2] = snBackgroundCave3;
global.song[CAVE,3] = snBackgroundCave5;
global.song[LAVA,0] = snBackgroundLava1;
global.song[LAVA,1] = snBackgroundLava2;
global.song[LAVA,2] = snBackgroundLava3;
global.song[LAVA,3] = snBackgroundLava4;
global.song[LAVA,4] = snBackgroundLava5;
global.song[DEEP,0] = snBackgroundDeep1;
global.song[DEEP,1] = snBackgroundDeep3;
global.song[DEEP,2] = snBackgroundDeep4;
global.song[DEEP,3] = snBackgroundDeep5;
global.song[END,0] = snBackgroundStarsGotten;
global.song[SPECIAL,0] = snSpecialStage;
#endregion