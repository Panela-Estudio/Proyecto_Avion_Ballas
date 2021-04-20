class jugador{
  int radio = 15;
  int vel = 4;
  PVector Po = new PVector();
  boolean Der = false,Izq = false,Arr = false,Aba = false,Dis = false;
  jugador(float tempx,float tempy){
    Po.x = tempx;
    Po.y = tempy;
  }
  void gen(){    
    control();
    atacar();
    imagen();
  }
  void movx(int x){
    Po.x += vel*x;
  }
  void movy(int y){
    Po.y += vel*y;
  }
  void atacar(){
    if(Dis){Tiros.add(new balas(Po.x,Po.y-(jugadorV.height/2),-1,true,2)); Dis = false;}
  }
  void control(){
    if(Der){movx(1);}
    if(Izq){movx(-1);}
    if(Arr){movy(-1);}
    if(Aba){movy(1);}
  }
  void imagen(){
    image(jugadorV,Po.x - jugadorV.width/2,Po.y - jugadorV.height/2);
  }
}
