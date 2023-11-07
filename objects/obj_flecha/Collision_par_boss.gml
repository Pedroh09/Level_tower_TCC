/// @description Inserir descrição aqui
var _dano = 3;


other.hit = true;
other.alarm[1] = 5;
other.vida -= _dano;


instance_destroy();

var _isnt = instance_create_layer(x,y,"instances", obj_dano);
_isnt.alvo = other;
_isnt.dano = _dano;