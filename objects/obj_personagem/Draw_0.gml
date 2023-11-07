/// @description Inserir descrição aqui
draw_text(10,10,xp);
draw_sprite(spr_personagem_sombra, 0, x, y + 4);
draw_self();

if alarm[3] >0{

if image_alpha >= 1{
	dano_alfa = -0.05;
}  else if image_alpha <= 0{

	dano_alfa = 0.05;
}

	image_alpha += dano_alfa;

}else {

	image_alpha = 1;
}


