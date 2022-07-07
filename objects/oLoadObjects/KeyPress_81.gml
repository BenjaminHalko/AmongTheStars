/// @desc

if(keyboard_check(vk_control)) {
	file_delete(global.username+".ini");
	game_restart();
	instance_destroy();
}