/// @description Inserir descrição aqui
script_execute(estado);

depth = -y;

if alarm[1] <= 0{
	estamina += 1;
}

estamina = clamp(estamina, 0, max_estamina[level]);



if keyboard_check_pressed(ord("R")) {
	room_restart();
}


if xp >= max_xp[level]{
	xp = xp - max_xp[level];
	level += 1;
	vida_per = max_vida[level];
	estamina = max_estamina[level];

}

if keyboard_check_released(ord("E")){

	arma += 1; 

}

if keyboard_check_pressed(ord("Q")){

	arma -= 1;

}

if arma >= Armas.Altura {

	arma =0;

}else if arma < 0 {

	arma = Armas.Altura -1;

}

if vida_per <= 0{

	instance_destroy();
	room_restart();

}

if instance_exists(obj_item) and obj_inventario.inventario == false {
	
	var _inst = instance_nearest(x,y,obj_item);
	if distance_to_point(_inst.x,_inst.y) <= 20 {
	
	if keyboard_check_pressed(ord("F"))
	ds_grid_add_item(_inst.image_index,_inst.quantidade,_inst.sprite_index);
	
	instance_destroy(_inst)
	
	}

}