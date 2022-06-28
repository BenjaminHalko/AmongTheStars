/// @desc
if(!notAllowedToCollide) and (ds_list_find_index(global.starmap,id) == -1)
{
	global.starcount++;
	ds_list_add(global.starmap,id);
}