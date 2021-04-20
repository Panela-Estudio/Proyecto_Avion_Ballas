void titulo(){
  image(Ptitulo,0,0);
  image(Titulo,width/2 - Titulo.width/2,100);
}
void gameplay(){
  Mecanicas();
  Bam();
  Pacman.gen();  
  for(int i = 0; i < fantasma.length; i++){fantasma[i].gen();}
}
void configuracion(){}
void pause(){}
void pantallas(){
  switch(Pactual){
    case 1:
    titulo();
    break;
    case 2:
    gameplay();
    break;
    case 3:
    //tutorial
    break;
    case 4:
    //Pantalla de niveles
    break;
  }
  switch(key){
    case '1':
      Pactual = 1;
    break;
    case '2':
      Pactual = 2;
    break;
  }
}
