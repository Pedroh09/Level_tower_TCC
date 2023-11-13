/// @description Inserir descrição aqui
inventario = false;
escala = 3;

comecox = 15 * escala;
comnecoy = 24 * escala;

slots_h = 8;
slots_v = 3;
total_slots = slots_h * slots_v;
tamanho_slot = 16 * escala;
buffer = 1 * escala;

inventario_l = sprite_get_width(spr_inventario) * escala;
inventario_a = sprite_get_height(spr_inventario) * escala;

item_selecionado = -1;
pos_selecionada  = -1 ;

enum Item_Armas {
    espada,
    arco,
    cajado,
    altura
}

enum Item_Drop_monstro {
    SlimeParte,
    orkCapacete,
    orkDente,
    Altura
}

enum Infos {
    Item,
    Quantidade,
    sprite,
    altura
}

grid_itens = ds_grid_create(Infos.altura, total_slots); // Create a 2x(total_slots) grid
ds_grid_set_region(grid_itens, 0, 0, Infos.altura - 1, total_slots - 1, -1);
ds_grid_add_item(Item_Armas.arco, 1, spr_items_armas);
ds_grid_add_item(Item_Armas.espada, 3, spr_items_armas);
ds_grid_add_item(Item_Armas.cajado, 5, spr_items_armas);

ds_grid_add_item(Item_Drop_monstro.SlimeParte, 65, spr_items_inimigos);
ds_grid_add_item(Item_Drop_monstro.orkCapacete, 2, spr_items_inimigos);
	