/// @desc
if(!notAllowedToCollide) and (ds_list_find_index(global.starmap,id) == -1)
{
	global.starcount++;
	ds_list_add(global.starmap,id);
	try gxc_challenge_submit_score(global.starcount,undefined,{challengeId: "8d0d7aa6-74c1-428f-84e3-c3b20a03fc44"});
	catch(_error) show_debug_message(_error);
}