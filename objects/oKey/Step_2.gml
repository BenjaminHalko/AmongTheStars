/// @desc
if(mode == 1)
{
	var distancedivede = 6;
	var xtarget = oPlayer.x-((25*keynumber)*sign(oPlayer.image_xscale));
	var ytarget = oPlayer.y+10;
	x = Approch(x,xtarget,median(point_distance(x,0,xtarget,0)/distancedivede/max(keynumber*0.75,1),1,oPlayer.hsp_walk));
	yy = Approch(yy,ytarget,median(point_distance(0,yy,0,ytarget)/distancedivede/max(keynumber*0.75,1),1,max(oPlayer.vsp/5,oPlayer.hsp_walk*2)));
	
	image_xscale = sign(oPlayer.x-x);
}
else if (mode == 2)
{
	var distancedivede = 15;
	var xtarget = target.x+31;
	var ytarget = target.y+32;
	x = Approch(x,xtarget,max(point_distance(x,0,xtarget,0)/distancedivede,1));
	y = Approch(y,ytarget,max(point_distance(0,yy,0,ytarget)/distancedivede,1));
	
	image_xscale = 1;
}