/// @desc 
if(oPause.pause) exit;
draw_set_halign(fa_left);
draw_set_colour(c_white);
draw_set_font(fGui);
draw_set_alpha(1);
space = 0;
#region Debug
if(debug)
{
	draw_text_gui(xx,yy,"Track Pos: "+string(oMusic.soundpos));
	draw_text_gui(xx,yy,"Track Length: "+string(audio_sound_length(oMusic.currentsound)));
	draw_text_gui(xx,yy,"Music: "+string(oMusic.music));
}
#endregion