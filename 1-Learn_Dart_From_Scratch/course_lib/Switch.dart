//Date: 27th of July 2024
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

void main(){
  int iphone = 1;
  int s10 = 2;
  int s20 = 3;

  int amount = iphone;

  switch(amount){
    case 1: {print("You have an iphone");  }
    case 2: {print("You have a s10"); }
    case 3: {print("You have a s20"); }
    default :  {print("You have $amount"); break;}
  }//switch
}//main