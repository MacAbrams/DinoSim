public class Dinosaur{
  float x,y,closest,direction;
  
  Dinosaur(float x,float y){
    this.x = x;
    this.y = y;
    this.closest = 999999;
    this.direction = 0;
  }
  
  public void show(){
    fill(255,0,0);
    noStroke();
    circle(this.x,this.y, 10);
    stroke(255,0,0);
    strokeWeight(3);
    line(this.x,this.y,this.x+12*cos(this.direction),this.y+12*sin(this.direction));
    
  }
  
  public float getClosestFood(Food plants[]){
    this.closest = 999999;

    for(int i=0;i<plants.length;i++){
      float distance = plants[i].getDistance(this.x,this.y);
      this.closest = min(this.closest, distance);
    }
    return this.closest;
  }
  
  public void move(float angle,float distance){
    this.x += distance * cos(angle);
    this.y += distance * sin(angle);
  }
  
}