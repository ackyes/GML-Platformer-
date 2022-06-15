/// @description Insert description here
// You can write your code in this editor

//lives 
for(i=0;i<lives;i++){												// loop through the number of hearts we have
	draw_sprite(sHeart,0,50+(sprite_get_width(sHeart)*i),50);		// draw if we have them
}

//game over screen
switch(room)
	{
	case rm_gameover:
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_colour(c_red);
	draw_set_alpha(1);
	draw_text_transformed(250, 150, string("YOU LOSE ") + "", 3, 3, 0);
	draw_set_colour(c_white);
	draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<" ) + "");
	draw_set_halign(fa_left);
	break;
	}	