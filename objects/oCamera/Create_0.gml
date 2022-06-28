/// @description Set Up Camera
cam = view_camera[1];
follow = oPlayer;
view_w_half = camera_get_view_width(cam)*0.5;
view_h_half = camera_get_view_height(cam)*0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;
x = oPlayer.x;
y = oPlayer.y;

sizewnormal = camera_get_view_width(cam);

sizew = sizewnormal;
sizeh = sizew/(1920/1080);
alpha = 0;
pause = false;