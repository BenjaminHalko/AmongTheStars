/// @desc
#region Pitch & Ending
stop = false;
pitch = 1;
pitchspd = 0.005;
time = 5;
alpha = 0;
#endregion

#region Text
maxtext = 10;
blink = false;
blinkrate = room_speed/2;
alarm[0] = blinkrate;
dissappearalpha = 1;
surface_resize(application_surface,display_get_gui_width(),display_get_gui_height());
#endregion

global.starcount = Load("Counters","Starcount",0);
global.jumps = Load("Counters","Jumps",0);
global.walljumps = Load("Counters","Walljumps",0);
global.ducks = Load("Counters","Ducks",0);
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