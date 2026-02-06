void setup(){
  size(500,500);
}

void draw(){
  sierpenski(50,50,400);
}

public void sierpenski(float x, float y, float len){
  if(len<=10){
    fill(255+(float)Math.random()*20-10, (float)Math.random()*50, (float)Math.random()*50);
    triangle(x,y,x+len/2,y+(float)Math.sqrt(3)*len*0.5,x+len, y);}
  else{
    sierpenski(x,y,len/2);
    sierpenski(x+len/4,y+(float)Math.sqrt(3)*0.25*len,len/2);
    sierpenski(x+len/2,y,len/2);
  }
}
