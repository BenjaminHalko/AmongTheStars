/// @desc
var dir = point_direction(other.x,other.y,x,y);
physics_apply_force(x+lengthdir_x(sprite_height/2-5,dir),y+lengthdir_y(sprite_height/2-5,dir),lengthdir_x(4000,dir),lengthdir_y(4000,dir));
other.image_speed = 1;
audio_play_sound(snBumper,1,false);