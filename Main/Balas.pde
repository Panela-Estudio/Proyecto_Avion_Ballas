ArrayList <balas> Tiros;
ArrayList <balas> Hostiles;
class balas{
  int vel = 5;
  PVector mov = new PVector();
  float area = 5;
  int dir;
  boolean vertical;
  int tipo;
  
  balas(float tempx,float tempy, int tempd, boolean tempD,int tempT){
    mov.x = tempx;
    mov.y = tempy;
    dir = tempd;
    vertical = tempD;
    tipo = tempT;
  }
  void gen(){
    desplasar();
    imagen();
  }
  void desplasar(){
    if(vertical){mov.y +=vel*dir;}
    else if(!vertical){mov.x +=vel*dir;}        
  }
  void imagen(){
    noStroke();
    switch(tipo){
      case 1:
      fill(255,0,0);
      break;
      case 2:
      fill(#FFF300);
      break;
      case 3:
      break;
    }    
    circle(mov.x - area/2,mov.y - area/2,area);
  }
}
