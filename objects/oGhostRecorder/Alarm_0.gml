/// @desc Record Each Frame
if(!ds_exists(ghostRecordList,ds_type_list))
{
	ghostRecordFrames = 1;
	ghostRecordList = ds_list_create();
}
	
//Record This Frame
var _frameToRecord = ds_map_create();
with(pPlayer)
{
	_frameToRecord[? "player.x"] = x;
	_frameToRecord[? "player.y"] = y;
	_frameToRecord[? "player.xscale"] = image_xscale;
	_frameToRecord[? "player.yscale"] = image_yscale;
	_frameToRecord[? "player.sprite"] = sprite_index;
	_frameToRecord[? "player.index"] = image_index;
	_frameToRecord[? "player.angle"] = image_angle;
	_frameToRecord[? "player.alpha"] = image_alpha;
}
	
ds_list_add(ghostRecordList,_frameToRecord);
ds_list_mark_as_map(ghostRecordList,ds_list_size(ghostRecordList)-1);
ghostRecordFrames++;
time *= spd;