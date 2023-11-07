/// @description Inserir descrição aqui
nome = "Azazel";
enum Armas {
	Espadas,
	Arcos,
	Altura
}


//Movimentação
direita = -1;
cima = -1;
esquerda = -1;
baixo = -1;

hveloc = 0;
vveloc = 0;

veloc = 2;
veloc_dir = -1;

dir = 0;

//Dash
dash_dir = -1;
dash_veloc = 6;

//Estado
estado = scr_personagem_andando;





//combate
level = 1;
//exp
xp  =  0;
max_xp [1] = 50;
max_xp [2] = 130;
max_xp [3] = 150;
max_xp [4] = 180;
max_xp [5] = 200; 

//vida

max_vida[1] = 20;
max_vida[2] = 30;
max_vida[3] = 40;
max_vida[4] = 48;
max_vida[5] = 58;
vida_per = max_vida[level];

//estamina
max_estamina [1] = 50;
max_estamina [2] = 100;
max_estamina [3] = 120;
max_estamina [4] = 150;
max_estamina [5] = 180;
estamina = max_estamina[level];

//dano
dano [1] = 1;
dano [2] = 2;
dano [3] = 5;
dano [4] = 7;
dano [5] = 10;



empurrar_dir = 0;
tomou_hit = true;

dano_alfa = -1;
atacar = false;


arma = 0;
