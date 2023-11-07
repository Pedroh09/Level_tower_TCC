/// @description slime atacando 
	if other.tomou_hit ==true{
	var _dir = point_direction(x,y, other.x, other.y);
	with(other){
	
	empurrar_dir = _dir;
	estado = scr_perso_hit;
	alarm[2] = 10;
	alarm[3] = 100;
	tomou_hit = false;
	vida_per -= 6;
	}

	var _isnt = instance_create_layer(x,y,"instances", obj_dano);
	_isnt.alvo = other;
	_isnt.dano = 6;
	
	}
	
