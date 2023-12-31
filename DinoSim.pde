Dinosaur dinos[] = new Dinosaur[100];
Food foods[] = new Food[100];

void setup() {
  size(1000, 1000);
  for(int i = 0; i<dinos.length; i++){
    dinos[i] = new Dinosaur(random(width),random(height));
  }
  
  for(int i = 0; i<foods.length; i++){
    foods[i] = new Food(random(width),random(height));
  }
  
}

void draw() {
  background(220);
  for(int i=0;i<foods.length;i++){
    foods[i].show();
  }
  
  for(int i = 0; i<dinos.length; i++){
    Dinosaur dino = dinos[i];
    dino.show();
    float oldDistance = dino.closest;
    float distance = dino.getClosestFood(foods);
    if(distance>oldDistance){
      dino.direction = random(TWO_PI);
    }
    dino.move(dino.direction,distance/2.0);    
    
  }
  
}