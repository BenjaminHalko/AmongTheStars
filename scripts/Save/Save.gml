/// @desc Save
/// @arg section
/// @arg key
/// @arg value
function Save(argument0, argument1, argument2) {

	var _s = argument0;
	var _k = argument1;
	var _v = argument2;

	ini_open(global.username+".ini");

	if(is_real(_v))
	{
		ini_write_real(_s,_k,_v);
	}
	else
	{
		ini_write_string(_s,_k,_v);
	}
	ini_close();


}
