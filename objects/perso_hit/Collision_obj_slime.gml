other.vida -= obj_personagem.dano;


var _dir = point_direction(obj_personagem.x,obj_personagem.y,other.x,other.y);
other.empurrar_dir = _dir; 
other.empurrar_veloc = 6;
other.alarm[1] = 5;
other.hit = true; 
other.estado = scr_slime_hit;

var _isnt = instance_create_layer(x,y,"instances", obj_dano);
_isnt.alvo = other;
_isnt.dano = obj_personagem.dano;