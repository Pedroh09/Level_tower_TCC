/// @description Inserir descrição aqui
var _dano = 3;
var _dir  = point_direction(x,y,other.x,other.y);

other.empurrar_dir = _dir;
other.empurrar_veloc = 6;
other.hit = true;
other.alarm[1] = 5;
other.estado = scr_slime_hit;
other.vida -= _dano;


instance_destroy();