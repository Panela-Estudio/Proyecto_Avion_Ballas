class Fantasmas{
  float x,y;
  int Dx = 1;
  int Dy = 1;
  int velE = 3;
  int VelV = 2;
  int radio = 15;
  int tic = 0;
  int tac = 0;
  int toc = 0;
  boolean cambio = false;
  boolean contacto = false;
  
  Fantasmas(float tempx,float tempy){
    x = tempx;
    y = tempy;
  }
  void gen(){
    movimiento();
    atacar();
    imagen();
  }
  void movimiento(){    
    tic+=1;
    toc+=1;
    if(tic >= random(40,65)){
      tic = 0;
      cambio = !cambio;
    }
    if(cambio){ x += velE*Dx;}
    else if(!cambio){ y += velE*Dy;}
    if(x >= width || x <= 0){ Dx = Dx*-1; } else if(y >= height || y <= 0){ Dy = Dy*-1; }
  }
  void atacar(){
    tac += 1;
    if(tac >= 30){contacto = true; tac=0;}
    else {contacto = false;}
    if(contacto){
      Hostiles.add(new balas(x,y+15,1,true,1));
    }
  }
  void imagen(){
    fill(255,0,0);
    image(EnemigoV,x - EnemigoV.width/2,y - EnemigoV.height/2);
  }
}
