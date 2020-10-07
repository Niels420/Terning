
int[] numbers = new int [31];
int counter = 0;

int ones = 0;
int twos = 0;
int threes = 0;
int fours = 0;
int fives = 0;
int sixes = 0;

void setup() {
  size(800, 800);
  clear();
  textSize(20);
  text("TRYK på 'k' FOR AT KASTE", 50, 50);            //text der vises så snart programmet starter
  text("Fordeling af terningekast", 70, 750);
    for(int b=1; b<6; b++)text(b, 20+50*b, 700);
    textSize(14);
    for(int b = 0; b<300; b+=50)text("0 stk",60+b,660);
  }


void draw() {
}

void keyPressed() {
  clear();
  textSize(20);
  text("TRYK på 'k' FOR AT KASTE / OG 's' FOR AT SLETTE", 50, 50);

  if (key=='k' && counter <30) {
 
    counter++;
    int kast = lavTerningeKast(1, 7);
    text("DIT KAST BLEV:" + kast, 50, 75);
  }

  if (key == 's' && counter>0) {
    fjernSidsteKast();
  }
  

  tegnFordeling();                   //Funktion er længere nede i programmet
udskrivKast();                       //Funktion er længere nede i programmet
}

int lavTerningeKast(int min, int max){
  int nyKast = int(random(min,max));
 numbers[counter] = nyKast;
 
 if(nyKast==1)ones++;
 if(nyKast == 2)twos++;
  if(nyKast == 3)threes++;
  if(nyKast == 4)fours++;
  if(nyKast == 5)fives++;
  if(nyKast == 6)sixes++;
return nyKast;


}

void udskrivKast(){
  for(int b=1;b<=counter;b++){
  text("Kast "+b+": "+numbers[b], 600, 50+20*b);
  }
  
  
}

void fjernSidsteKast(){
  if(numbers[counter]==1)ones--;
  if(numbers[counter]==2)twos--;
  if(numbers[counter]==3)threes--;
  if(numbers[counter]==4)fours--;
  if(numbers[counter]==5)fives--;
  if(numbers[counter]==6)sixes--;
  
  counter--;
  text("DIT KAST BLEV:" + numbers[counter], 50, 75);
}

void tegnFordeling(){
 
  text("Fordeling af terningekast", 70, 750);
  for(int b=1; b<6; b++){
    text(b, 20+50*b, 700);
  }
  textSize(14);
  rect(55,670,45,ones*-20);     text(ones+" stk",60,660-ones*20);
  rect(105,670,45,twos*-20);    text(twos+" stk",110,660-twos*20);
  rect(155,670,45,threes*-20);  text(threes+" stk",160,660-threes*20);
  rect(205,670,45,fours*-20);   text(fours+" stk",210,660-fours*20);
  rect(255,670,45,fives*-20);   text(fives+" stk",260,660-fives*20);
  rect(305,670,45,sixes*-20);   text(sixes+" stk",310,660-sixes*20);
  textSize(20);
}
