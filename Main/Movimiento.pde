void terrenoV(){
  copy(fondoV,0,recorrido,500,500,0,0,500,500);
  recorrido -= 1;
  if(recorrido <= 0){recorrido = 2500;}
}
void NubesV(){
  image(nubesV,desplazamiento,0);
  desplazamiento -= 1;
  if(desplazamiento <= -2375){desplazamiento = 500;}
}
void terrenoH(){
  image(fondoH,camino,0);
  camino -= 1;
  if(camino <= -2500){camino = 0;}
}
void NubeH(){
  copy(nubesH,camino2,0,500,500,0,0,500,500);
  camino -= 2;
  if(camino2 <= -2500){copy(nubesH,camino2 + nubesH.width,0,500,500,0,0,500,500);}
  else if(camino2 <= -3000){camino2 =0;}
}
void Mecanicas(){
  switch(Eje){
    case 1://Movimiento en vertical
    terrenoV();
    NubesV();
    break;
    case 2://Movimiento en horizontal
    terrenoH();
    NubeH();
    break;
  }
}
void Bam(){
  for(int i = Hostiles.size() - 1; i >= 0; i--){
    balas Hostil = Hostiles.get(i);
    Hostil.gen();
    if(Hostil.mov.y <= Pacman.Po.y + 15 && Hostil.mov.x >= Pacman.Po.x - 10 && Hostil.mov.x <= Pacman.Po.x + 10 && Hostil.mov.y >= Pacman.Po.y - 15){
      Hostiles.remove(i);
    }
    else if(Hostil.mov.y >= height || Hostil.mov.x >= width || Hostil.mov.x <= 0){
      Hostiles.remove(i);
    }
  }
  for(int j = Tiros.size() - 1; j >= 0; j--){
    balas Tiro = Tiros.get(j);
    Tiro.gen();
  }
}
