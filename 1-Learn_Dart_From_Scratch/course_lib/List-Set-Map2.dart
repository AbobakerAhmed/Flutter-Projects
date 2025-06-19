//Date: 28th of July 2024
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

/*
  1- Selecting the data type of elements inside of a List, Set, or Map.
  2- whereType()
  3- firstWhere()
*/

void main(){
  //1-
    // List of Strings:
    List<String> names = ["Abobaker","Ahmed","Khidir","Hassan"]; //only string
    print("List of Strings: $names.\n");
  
    // Set of Doubles:
    Set <double> scores = {99.3, 92.5, 94.34, 97.2}; //only double
    print("Set of scores: $scores.\n");

    //Map of String keys and double values
    Map <String,double> students = {"Abobaker":99.3, "Ahmed":92.5, "Khidir":94.34, "Hassan":97.2}; //only string key and double value
    print("Map of students: $students.\n"); 
  
  //2-
    List n = [1,'2', 3.0, 4, '5', 6.0];
    print("Org list: $n");

    List a = n.sublist(1,3); //copy sub of a list
    print("Sublist from 1 to 3: $a");
    
    var i = n.whereType<int>(); //copy only intgers
    print("Copied list of int data type: $i");

    var s = n.whereType<String>(); //copy only strings
    print("Copied list of String data type: $s");

    var d = n.whereType<double>(); //copy only doubles
    print("Copied list of doubles: $d");


  //3- firstWhere()
    print("The first int in list is: ${n.firstWhere((element) => element.runtimeType == int)}");
    print("The first stirng in list is: \"${n.firstWhere((element) => element.runtimeType == String)}\"");
    


}//main