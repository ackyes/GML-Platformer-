/// @description Insert description here
// You can write your code in this editor

if (room_get_name(rm_gameover) == rm_gameover)
	{
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_colour(c_red);
	draw_set_alpha(1);
	draw_text_transformed(250, 150, string("YOU LOSE ") + "", 3, 3, 0);
	draw_set_colour(c_white);
	draw_text(250, 250, string("FINAL SCORE: ") + string(game_score));
	draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<" ) + "");
	draw_set_halign(fa_left);
	}