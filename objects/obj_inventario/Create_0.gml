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

enum Infos {
    Item,
    Quantidade,
    altura
}

grid_itens = ds_grid_create(2, total_slots); // Create a 2x(total_slots) grid
ds_grid_set_region(grid_itens, 0, 0, 1, total_slots - 1, -1);

// primeiro slot
grid_itens[#Infos.Item, 0] = Item_Armas.espada;
grid_itens[#Infos.Quantidade, 0] = 2;
// segundo slot
grid_itens[#Infos.Item, 1] = Item_Armas.cajado;
grid_itens[#Infos.Quantidade, 1] = 4;
// terceiro slot
grid_itens[#Infos.Item, 2] = Item_Armas.arco;
grid_itens[#Infos.Quantidade, 2] = 6;
// quarto slot
grid_itens[#Infos.Item, 4] = Item_Armas.espada; // Changed from 4 to 3
grid_itens[#Infos.Quantidade, 4] = 9; // Changed from 4 to 3
