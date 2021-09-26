
float [] s = {255,0,0};
float [] e = {0,0,0};
float [][] cts;

void setup(){
 frameRate(15);
  size(1000,1000);
  cts = new float[60][3];
  for(int i = 0; i <3; i ++){
  float c = s[i];
  for(int j = 0; j < 60; j ++){
    cts[j][i] = c;
    c += (e[i]-s[i]) /60; }
  }
}
int i = 0;
int flag = 0;

  
void draw(){
  background(0);
  

  for (int X = 0; X < 8; X++){
    for (int Y= 0; Y< 8; Y++){
      
      fill(cts[i][0], cts[i][1], cts[i][2]);
      if(i == 0){
        flag = 0;
      }
      else if(i == 50){
        flag =1;
      }
      if(flag == 0){
        i++;
      }
      else if (flag == 1){
        i--;
      }
      
      rect(100+X*random(107,110),100+Y*random(107,110),50,50);
    }
  }
}
