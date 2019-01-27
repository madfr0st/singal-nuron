
static float sign(float a){
  
  if (a>=0){
    return 1;}
    else{
      return-1;
    }
  
}

public class perceptron{
  
  float lr = 0.01;
  float[] weights = new float[2];
  
  //Contructor
  perceptron(){
    for(int i=0;i<weights.length;i++)
    
    weights[i] = random(-1,1);
    
  }
  
  float guess(float[] inputs){
    
    float sum = 0;
  
    for(int i=0;i<weights.length;i++){    
      sum = sum + weights[i]*inputs[i];      
    }
    
    float output = sign(sum);
    return output;
    
  }
  
  void train(float[] input, float target){
    
    float guess = guess(input);
    float error = target - guess;
    
    for(int i=0;i<weights.length;i++){
      weights[i] = weights[i] + error * input[i] * lr;
    }
  
}
}
