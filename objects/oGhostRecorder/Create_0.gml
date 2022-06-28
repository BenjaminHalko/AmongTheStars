/// @desc Variables

#macro GHOSTFILE "Recording"+string(global.name)+".json"
ghostRecord = true;
ghostRecordFrames = 0;
ghostRecordList = ds_list_create();
time = 2;
spd = 1.0025;
maxframes = 3200;
instance_create_layer(0,0,layer,oGhost);
alarm[0] = time;
framesave = false;