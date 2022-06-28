/// @desc
if(win)
{
	if(room == rSpecial6)
	{
		Save("Room","Special Zone",false);
		room_goto(rGame);
	}
	else
	{
		room_goto_next();
	}
}
else
{
	room_restart();
}

instance_create_layer(0,0,layer,oTitleTransition);