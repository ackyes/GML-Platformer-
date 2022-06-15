/// @description Insert description here
// You can write your code in this editor

//lives 
for(i=0;i<lives;i++){												// loop through the number of hearts we have
	draw_sprite(sHeart,0,50+(sprite_get_width(sHeart)*i),50);		// draw if we have them
}

//game over screen
switch(room)
	{
	case rm_win:
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
		draw_set_colour(c_lime);
		draw_set_alpha(1);
		draw_text_transformed(250, 150, string("YOU WIN ") + "", 3, 3, 0);
		draw_set_colour(c_white);
		draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<" ) + "");
		draw_set_halign(fa_left);
	break;
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
//pausing game
if paused == true
{
	if !surface_exists(paused_surf)
	    {
	    if paused_surf == -1
	        {
	        instance_deactivate_all(true);
	        }
	    paused_surf = surface_create(room_width, room_height);
	    surface_set_target(paused_surf);
	    draw_surface(application_surface, 0, 0);
	    surface_reset_target();
	    }
	else
	    {
	    draw_surface(paused_surf, 0, 0);
	    draw_set_alpha(0.5);
	    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	    draw_set_alpha(1);
	    draw_set_halign(fa_center);
	    draw_text_transformed_colour(room_width / 2, room_height / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	    draw_set_halign(fa_left);
	    }
	}