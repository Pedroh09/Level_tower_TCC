/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if fim_animacao(){
	var _dir = 0;
	repeat(8) {
		var _inst = instance_create_layer(x,y,"Instances",obj_boss_projetil );
		_inst.speed = 2.5;
		_inst.direction =_dir;
		
		
		_dir += 90;
	
	}
	instance_destroy();

}