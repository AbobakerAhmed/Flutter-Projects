//Date: 28th of July 2024
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

/*
    Functions
*/

// 1- Defintion of functions outside of the main: returnDataType functionName ( arguments ) { code }
void studyIn(Map someOne){
  print( "Univercity:${someOne['Univercity']} , Faculty:${someOne['Faculty']} , Level:${someOne['Level']}");
}//studyIn
// It can also be defined under the main function

void main(){
  Map Abobaekr = { 'Age':21, 'live': 'Omdurman', "Univercity": "UofK", "Faculty": "FMSI", "Level": 2};
  studyIn(Abobaekr);

  // 2- Defintion of functions isside of the main: returnDataType functionName ( arguments ) { code }
  int sum(int a, int b){
    return a+b;
  }//sum
  int c = sum(2,3);
  print(c);

  // Non datatype functions: like the "var" data type
  multiply(double a, double b){ return a*b;}
  printName(){print("Hello Ahmed");}

  // Function scope


}//main


