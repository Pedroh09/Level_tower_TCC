/// @description barra de vida e estamina
 var _escala = 3;
 var _guia = display_get_gui_height();
 var _spra = sprite_get_height(spr_hud_vida) * _escala;
 
 var _huda =  _guia - _spra;
 
 var _vida = obj_personagem.vida_per;
 var _maxvida = obj_personagem.max_vida[obj_personagem.level];
  var _estamina = obj_personagem.estamina
 var _maxEstamina = obj_personagem.max_estamina[obj_personagem.level];
 var _xp = obj_personagem.xp;
 var _maxXp = obj_personagem.max_xp[obj_personagem.level];
var _xpa = sprite_get_height(spr_hud_exp) * _escala;

 //vida
  draw_sprite_ext(spr_hud_barra_vida,4, 4, _huda, (_vida / _maxvida) *_escala, _escala,0,c_white,1 );

 
 //estamina
  draw_sprite_ext(spr_hud_barra_estamina,4, 4, _huda + 24, (_estamina / _maxEstamina) *_escala, _escala,0,c_white,1 );
 
 //hud
   draw_sprite_ext(spr_hud_vida, 4, 4, _huda, _escala, _escala, 0, c_white, 1);


//exp hud

  draw_sprite_ext(spr_hud_exp, 0, 0, _guia - _xpa, _escala, _escala, 0, c_white, 1);
  draw_sprite_ext(spr_hud_exp_barra, 0, 9, _guia - _xpa + 9, (_xp/_maxXp) * _escala, _escala, 0, c_white, 1);


//barra do boss
var _gl = display_get_gui_width();
if instance_exists(par_boss){

	var _spr_barra = sprite_get_width(spr_boss_hud) * _escala;
	draw_sprite_ext(spr_boss_hud,0,_gl/2 - _spr_barra/2,100, _escala,_escala,0,c_white,1);
	draw_sprite_ext(spr_boss_vida, 0, _gl/2 - _spr_barra/2 + 6,100,obj_boss.vida/obj_boss.vida_maxima * _escala,_escala,0,c_white,1);

}