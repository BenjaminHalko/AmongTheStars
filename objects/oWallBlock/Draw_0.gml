/// @desc
draw_set_alpha(image_alpha);
draw_set_color(c_red);
for(var i = 0; i<radiusnum; i++)
{
	draw_circle(x+sprite_width/2,y+sprite_height/2,max(0,radius[i]),true);
}
draw_set_alpha(1);