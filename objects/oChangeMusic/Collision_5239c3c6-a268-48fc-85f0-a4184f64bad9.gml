/// @desc
var go = true;
for(var i = 0; i<array_length_2d(global.song,music); i++)
{
	if(oMusic.currentsound == global.song[music,i]) go = false;
}

if(go)
{
ChangeMusic(music,fade);
instance_destroy();
}