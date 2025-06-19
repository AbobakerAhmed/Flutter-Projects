//Date: 28th of July
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

/*
  1-
  2- Quadratic Equations
  3-
*/

import 'dart:math'; //to calculate sqrt()

void main(){
  //Quadratic equations have this formula:
  // ax^2 + bx + c = 0
  int a = 4,b=4,c=1;
  solve(a, b, c); //solve the quadratic equation
}//main

solve(int a, int b, int c){
  var d = b*b - 4*a*c;
  if(d>0){
    print("Two real roods:");
    print("r1 = ${(-b - sqrt(d))/2*a}");
    print("r2 = ${(-b + sqrt(d))/2*a}");
  } else if(d==0){
    print("One real rood:");
    print("r = ${-b/2*a}");
  } else {
    print("Tow complix roods:");
    print("r1 = ${-b/2*a} + ${sqrt(-d)/2*a}i");
    print("r2 = ${-b/2*a} - ${sqrt(-d)/2*a}i");
  }
}//solve


