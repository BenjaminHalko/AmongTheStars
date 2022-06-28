/// @desc 
phase++;

if(phase == 2)
{
	if(ds_list_find_index(global.bottlemap,id) == -1)
	ds_list_add(global.bottlemap,id);
}