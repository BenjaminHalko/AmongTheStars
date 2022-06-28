/// @desc Goto Next Room
audio_stop_all();

if(Load("Room","Special Zone",false))
room_goto(rSpecial1);
else
room_goto_next();