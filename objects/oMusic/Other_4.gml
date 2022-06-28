/// @desc
if(room != rExtra) and (room != rGame) and (room != rInt) ChangeMusic(SPECIAL,true);
if(room==rExtra) npitch = 1.5; else npitch = 1;
pitch = npitch;
if(room == rExtra) ChangeMusic(END,true);

if(room == rGame) ChangeMusic(Load("Music","Song",music),true);