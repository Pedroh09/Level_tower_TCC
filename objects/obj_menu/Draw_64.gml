/// @description Inserir descrição aqui
var gui_l = display_get_gui_width();
var gui_a = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if inventario == true {
	
	var invx = gui_l/2 - inventario_l/2;
	var invy = gui_a/2 - inventario_a/2;

	draw_sprite_ext(spr_inventario,0,invx,invy,escala,escala,0,c_white,1);

}