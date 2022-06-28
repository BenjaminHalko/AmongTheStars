/// @description Tick

++tick;
if(instance_exists(oScreenshot))
global.ambientShadowIntensity = 0.3+(oScreenshot.yy/room_height)*0.5;
else if(instance_exists(oPlayer))
global.ambientShadowIntensity = 0.3+(oPlayer.y/room_height)*0.5;