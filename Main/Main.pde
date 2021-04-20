int desplazamiento = 0;
int recorrido = 2000;
int camino = 0;
int camino2;
int Pactual = 1;
int Eje = 1;
ArrayList <jugador> Javier;
jugador Pacman; 
Fantasmas fantasma[] = new Fantasmas[5];

void setup(){
  size(500,500);
  Cargador();
  Tiros = new ArrayList<balas>();
  Hostiles = new ArrayList<balas>();
  Pacman = new jugador(width/2,2*height/3);
  for(int i = 0; i < fantasma.length; i++){    
    fantasma[i] = new Fantasmas((int)random(10,width-10),(int)random(10,height-10));
  }
}
void draw(){
  pantallas();
}
