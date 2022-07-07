/// @desc

surface_resize(application_surface,display_get_gui_width(),display_get_gui_height());

global.fireflys = 0;

global.map = false;
global.StarsMap = false;
global.BottlesMap = false;
global.FirefliesMap = false;

#region Gamepad
global.gp = noone;
var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
   if gamepad_is_connected(i)
   {
		global.gp = i;
		exit;
   }
}
#endregion

gxc_profile_get_info( function(_status, _result)
{
	var _temp = -1;
	if (_status == 200) {
		global.username = _result.data.username;
		if(!file_exists(global.username+".ini")) {
			_temp = global.username;
			global.username = "default_user";
		}
	} else global.username = "default_user";
	global.starcount = Load("Counters","Starcount",0);
	global.jumps = Load("Counters","Jumps",0);
	global.walljumps = Load("Counters","Walljumps",0);
	global.ducks = Load("Counters","Ducks",0);
	if(_temp != -1) global.username = _temp;
	try gxc_challenge_submit_score(global.starcount,undefined,{challengeId: "8d0d7aa6-74c1-428f-84e3-c3b20a03fc44"});
	catch(_error) show_debug_message(_error);
	room_goto_next();
});


