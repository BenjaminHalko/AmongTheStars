if (frame < ghostFrames)
{
	frameData = ghostData[| frame];
	oPlayer.x = frameData[? "player.x"];
	oPlayer.y = frameData[? "player.y"];
	oPlayer.image_xscale = frameData[? "player.xscale"];
	oPlayer.image_yscale = frameData[? "player.yscale"];
	oPlayer.sprite_index = frameData[? "player.sprite"];
	oPlayer.image_index = frameData[? "player.index"];
	oPlayer.image_angle = frameData[? "player.angle"];
	oPlayer.image_speed = frameData[? "player.speed"];
	frame++;
}
else
{
	ds_map_destroy(ghostDataRoot);
	instance_destroy();
	with(oStar) dissappear = true;
}