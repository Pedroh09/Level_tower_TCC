
/// @description display do inventario
var gui_l = display_get_gui_width();
var gui_a = display_get_gui_height();

var _mx = device_mouse_x_to_gui(0);
var _my = device_mouse_y_to_gui(0);

if inventario == true {
	
	var invx = gui_l/2 - inventario_l/2;
	var invy = gui_a/2 - inventario_a/2;

	draw_sprite_ext(spr_inventario, 0, invx, invy, escala, escala, 0, c_white, 1);
	var _ix = 0;
	var _iy = 0; 
	
	for (var i = 0; i < total_slots; i++){
		
		var _slotsx = invx + comecox + ((tamanho_slot + buffer) * _ix);
		var _slotsy = invy + comnecoy + ((tamanho_slot + buffer) * _iy);
		
		if point_in_rectangle(_mx, _my, _slotsx, _slotsy, _slotsx + tamanho_slot, _slotsy + tamanho_slot) {
			draw_sprite_ext(spr_inventario_seletor, 0, _slotsx, _slotsy, escala, escala, 0, c_white, 1);	
			
			if keyboard_check_pressed(ord("F")) and grid_itens[# Infos.Item,i] != -1 } {
			var _inst = instance_create_layer(obj_personagem.x,obj_personagem.y,"Instances",obj_item );
				_inst.sprite_index = grid_itens[# Infos.sprite, i];	
				_inst.image_index = grid_itens[# Infos.Item,i]
				_inst.quantidade = grid_itens[# Infos.Quantidade, i];
			//esvazando slot
			grid_itens[# Infos.Item,i] = -1;
			grid_itens[# Infos.Quantidade,i] = -1;
			grid_itens[# Infos.sprite,i] = -1;
			}
			
			
			if mouse_check_button_pressed(mb_left) {
				// Caso não tenha nenhum item selecionado
				if item_selecionado == -1 {
					item_selecionado = grid_itens[# Infos.Item, i];
					pos_selecionada = i;
				} else {
					// Caso já tenha item selecionado
					if item_selecionado == grid_itens[#Infos.Item, i] and pos_selecionada != i and grid_itens [# Infos.sprite, i] == grid_itens[# Infos.sprite,pos_selecionada] {
						grid_itens[#Infos.Quantidade, i] += grid_itens[#Infos.Quantidade, pos_selecionada];
						
						grid_itens[#Infos.Item, pos_selecionada] = -1;
						grid_itens[#Infos.Quantidade, pos_selecionada] = -1;
						item_selecionado = -1;
						pos_selecionada = -1;
						
					} else if grid_itens[#Infos.Item, i] == -1 {
						// caso 2 verifica se ta vazio
						grid_itens[#Infos.Item, i] = grid_itens[#Infos.Item, pos_selecionada];
						grid_itens[#Infos.Quantidade, i] = grid_itens[#Infos.Quantidade, pos_selecionada];
						grid_itens[#Infos.sprite, i] = grid_itens[#Infos.sprite, pos_selecionada];
						
						
						grid_itens[#Infos.Item, pos_selecionada] = -1;
						grid_itens[#Infos.Quantidade, pos_selecionada] = -1;	
						grid_itens[#Infos.sprite, pos_selecionada] = -1;						
						item_selecionado = -1;
						pos_selecionada = -1;
					} else if grid_itens[#Infos.Item, pos_selecionada] != grid_itens[#Infos.Item, i] or grid_itens[# Infos.sprite,pos_selecionada] != grid_itens[# Infos.sprite,i] {
						//caso 3 troca de posição de itens
						var _item = grid_itens[#Infos.Item, i];
						var _quantidade = grid_itens[#Infos.Quantidade, i];
						var _sprite = grid_itens[#Infos.sprite, i];
						
						
						grid_itens[#Infos.Item, i] = grid_itens[#Infos.Item, pos_selecionada];
						grid_itens[#Infos.Quantidade, i] = grid_itens[#Infos.Quantidade, pos_selecionada];
						grid_itens[#Infos.sprite, i] = grid_itens[#Infos.sprite, pos_selecionada];
						
						
						grid_itens[#Infos.Item, pos_selecionada] = _item;
						grid_itens[#Infos.Quantidade, pos_selecionada] = _quantidade;
						grid_itens[#Infos.sprite, pos_selecionada] = _sprite;
						
						
						item_selecionado = -1;
						pos_selecionada = -1;
					}
				}
			}
		}
				var _sprite = grid_itens[# Infos.sprite, i];

		// Checar Item no slot
		if grid_itens[#Infos.Item, i] != -1 {
			// Ver a sprite do item
			draw_sprite_ext(_sprite, grid_itens[# Infos.Item, i], _slotsx, _slotsy, escala, escala, 0, c_white, 1);
			// Quantidade do item
			draw_set_font(fnt_comic);
			draw_set_halign(fa_center);
			draw_text_colour_outline(_slotsx + tamanho_slot, _slotsy + tamanho_slot - 8, grid_itens[#Infos.Quantidade, i], 4, c_black, 15, 100, 100);
		}
		
		_ix++;
		if _ix >= slots_h {
			_ix = 0;
			_iy++;
		}
	}
	
	// Largar item
	if mouse_check_button_pressed(mb_right) {
		item_selecionado = -1;
		pos_selecionada = -1;
	}
	
	if item_selecionado != -1 {
		draw_sprite_ext(grid_itens[# Infos.sprite,pos_selecionada], item_selecionado, _mx, _my, escala, escala, 0, c_white, 0.5);
	}
}
