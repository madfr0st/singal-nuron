
public class point{
  
  float x;
  float y;
  float label;
  
  point(){
    
    x = random(width);
    y = random(height);
    
    if(x>y){
      label = 1;
    }
    else{
      label = -1;
    }
  }
  
  void show(){
    stroke(0);
    if(label == 1){
      fill(255);
    }
    else{
      fill(0);
    }
    
    ellipse(x,y,20,20);
  }
  
}
