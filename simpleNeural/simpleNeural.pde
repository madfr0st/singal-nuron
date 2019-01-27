perceptron p;
point[] points;
int training_index = 0;

void setup(){
  size(800,800);
  
  p = new perceptron();
  points = new point[200];
  
  for(int i=0;i<points.length;i++){
   points[i] = new point(); 
  }
  
  float[] input = {.5,1};
  float ans = p.guess(input);
  
  println(ans);

}

void draw(){
  background(255);
  stroke(0,0,255);
  line(0,0,width,height);
  for(point pt : points){
    pt.show();
  }
  for(point pt : points){
    float[] inputs = {pt.x,pt.y};
    //p.train(inputs,pt.label );
    
    float guess = p.guess(inputs);
    if(guess == pt.label){
      fill(0,255,0);
    }
    else{
      fill(255,0,0);
    }
    noStroke();
    ellipse(pt.x,pt.y,8,8);
  }
  
    point training = points[training_index];
    float[] inputs = {training.x,training.y};
    p.train(inputs,training.label );
    training_index++;
     if(training_index == points.length){
       training_index=0;
     }


}
