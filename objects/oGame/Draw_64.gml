/// @description Insert description here
// You can write your code in this editor

for(i=0;i<lives;i++){												// loop through the number of hearts we have
	draw_sprite(sHeart,0,50+(sprite_get_width(sHeart)*i+20),50);		// draw if we have them
}