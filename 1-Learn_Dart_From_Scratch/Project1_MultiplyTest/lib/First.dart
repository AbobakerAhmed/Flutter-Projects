//Date: 29th of July 2024

/*
  Multiply Test Project using dart
*/

import 'dart:io'; // to get inputs
import 'dart:math'; // to geterate random numbers

class Multiply{
  //Glouble variables:
  int? digit1, digit2, answer;

    void main(){
    //Asking a question
    creatQuestion();

    //The student then inputs the answer
    print("Enter your answer (-1 to exit):");
    answer = int.parse(stdin.readLineSync()!);
  
    while(answer != -1){
      //Checking is the user's answer currect or not, and do the task
      checkResponce(answer!); 
      
      //The student then inputs the answer
      print("Enter your answer (-1 to exit):");
      answer = int.parse(stdin.readLineSync()!);
    }//while

  }//main

  void creatQuestion(){
    //Use a Random object to produce two positive one-digit integers
    Random random = new Random();
    digit1 = random.nextInt(9);
    digit2 = random.nextInt(9);
    //Prompt the user with the question
    print("How much is $digit1 times $digit2?");
  }

  //the program checks the student’s answer.
  void checkResponce(int answer){
    //If it is correct If it is correct:
    if(answer == (digit1 !* digit2!)){
    //Display the message "Very good!"
    print("Very good!");
    //Ask another multiplication question.
    creatQuestion();
    }

    //If the answer is wrong:
    else {  // answer != digit1 * digit2;
      //Display the message "No. Please try again."
      print("No. Please try again.");
      //The same question will be asked.
      } 

  }


}//Multiply