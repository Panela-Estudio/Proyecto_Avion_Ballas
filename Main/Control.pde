void keyPressed(){
  switch(key){
    case 'w':
    case 'W':
      Pacman.Arr = true;
    break;
    case 'a':
    case 'A':
      Pacman.Izq = true;
    break;
    case 'd':
    case 'D':
      Pacman.Der = true;
    break;
    case 's':
    case 'S':
      Pacman.Aba = true;
    break;
  }
}
void keyReleased(){
  switch(key){
    case 'w':
    case 'W':
      Pacman.Arr = false;
    break;
    case 'a':
    case 'A':
      Pacman.Izq = false;
    break;
    case 'd':
    case 'D':
      Pacman.Der = false;
    break;
    case 's':
    case 'S':
      Pacman.Aba = false;
    break;
    case 'j':
    case 'J':
      Pacman.Dis = true;
    break;
  } 
}
