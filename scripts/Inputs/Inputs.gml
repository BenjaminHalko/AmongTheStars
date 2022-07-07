function Inputs() {
	key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(global.gp,gp_face1);
	key_duck = keyboard_check(vk_down) or gamepad_button_check(global.gp,gp_padd);
	key_pause = keyboard_check_pressed(vk_escape) or gamepad_button_check_pressed(global.gp,gp_start);
	key_restart = keyboard_check_pressed(ord("R"));
	key_end = keyboard_check_pressed(ord("Q")) or gamepad_button_check_pressed(global.gp,gp_face4);

	key_left = keyboard_check(vk_left) or gamepad_button_check(global.gp,gp_padl);
	key_right = keyboard_check(vk_right) or gamepad_button_check(global.gp,gp_padr);


}
