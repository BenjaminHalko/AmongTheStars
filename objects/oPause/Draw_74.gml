/// @desc
if(pause)
{
	draw_set_color(c_white);
	draw_set_font(fPause);
	draw_set_valign(fa_middle);
	draw_sprite_ext(sStar,0,96,230,4,4,0,c_white,1);
	draw_text(196,100,string(global.starcount)+"/20 Stars Collected");
	
	draw_text(196,200,string(global.fireflys)+"/100 Fireflies Caught");
	
	var num = 0;
	for(var i = 0; i < 16; i++)
	{
		for(var j = 0; j < 16; j++)
		{
			if(stoneunlocked[i,j])
			{
				num++;
			}
		}
	}
	draw_text(196,300,string(round(num/(16*16)*100))+"% of Map Explored");
	
	var jump = " Jumps";
	if(global.jumps == 1)
	jump = " Jump";
	draw_text(196,400,string(global.jumps)+jump);
	
	var jump = " Wall Jumps";
	if(global.walljumps == 1)
	jump = " Wall Jump";
	draw_text(196,500,string(global.walljumps)+jump);
	
	var jump = " Ducks";
	if(global.ducks == 1)
	jump = " Duck";
	draw_text(196,600,string(global.ducks)+jump);
}