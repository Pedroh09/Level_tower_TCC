/// @description Inserir descrição aqui
other.vida -= obj_personagem.dano[obj_personagem.level];



other.alarm[1] = 5;
other.hit = true; 

var _isnt = instance_create_layer(x,y,"instances", obj_dano);
_isnt.alvo = other;
_isnt.dano = obj_personagem.dano[obj_personagem.level];