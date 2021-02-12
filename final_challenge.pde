float baseH =80;
float armL1 =40;
float armL2 =30;
float armL3 =40;
float armL4 =30;
float armL5 =40;
float armW1 =10;
float armW2 =10;
float armW3 =10;
float armW4 =10;
float armW5 =10;
float angle0 =0;
float angle1 =0;
float angle2 =0;
float lbase =0;
float l5 =0;
float dif =1.0;


void setup(){
  size(1200, 800, P3D);
  background(255);
  noStroke();
  camera(200,200,200,0,0,0,0,0,-1);
}

void draw(){
  background(255);
  if(mousePressed){
    angle1 = angle1 +dif;
  }
  if(keyPressed){
    if(key == 'r'){
      angle0 = angle0 +dif;
    }
    if(key == 'R'){
      angle0 = angle0 -dif;
    }
    if(key == 'y'){
      baseH = baseH + dif;
    }
    if(key == 'Y'){
      baseH = baseH - dif;
    }
    if(key == 'x'){
      armL5 = armL5 + dif;
    }
    if(key == 'X'){
      armL5 = armL5 - dif;
    }
  }
  
 rotateZ(radians(angle0));
 translate(0,0, baseH/2);
 fill(175);
 box(10,10,baseH);
 
 
 translate(0,armL1/2-armW1/2,baseH/2+armW1/2);
 fill(150);
 box(armW1,armL1,armW1);
 
 
 rotateY(radians(angle1));
 translate(0,armL1-3*armW1/2,armL2/2-armW1/2);
 fill(125);
 box(armW2,armW2,armL2);
 
 translate(0,armL3/2-armW2/2,armL2/2+armW2/2);
 fill(100);
 box(armW3,armL3,armW3);
 
 translate(0,armL3/2-armW3/2,-armL4/2-armW3/2);
 fill(125);
 box(armW4,armW4,armL4);
 
 translate(0,armL5/2+armW4/2,-armL4/2+armW5/2);
 fill(100);
 box(armW5,armL5,armW5);
 
  
  
}
