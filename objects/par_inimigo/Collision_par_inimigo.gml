/// @description colição entre inimigos
var _dir = point_direction(x,y,other.x,other.y);
var _empurrar = 2;

var _empurrarx = lengthdir_x(_empurrar,_dir);
var _empurraoy = lengthdir_y(_empurrar,_dir);

other.x += _empurrarx;
other.y += _empurraoy;