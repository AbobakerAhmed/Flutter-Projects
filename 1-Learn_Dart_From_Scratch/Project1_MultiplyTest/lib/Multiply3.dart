// Date: 29th of July 2024
// Abobaekr Ahmed Khidir Hassan

// Project 1: Multiply.dart //.java
// Program generates single digit multiplication problems

import 'dart:io';  // to get inputs
import 'dart:math'; // to use Random()

class Multiply3
{
  Random randomNumbers = new Random(); // to get random numbers leate
  int? answer; // the correct answer 
  int score = 0; // currect guess
  int questionsCounter = 0; // questions counter
  // ask the user to answer multiplication problems
  void quiz()
  {
    int? guess; // the user's guess

    //Create and print the first question
    creatQuestion();

    //Get the user's guess
    print("Enter your answer (-1 to exit):"); 
    guess = int.parse(stdin.readLineSync()!); //input.nextInt();

    while ( guess != -1 )
    {
      if( questionsCounter == 10){
        calucatePercentage(guess!);
        continue;
      }// end if
      //Check is the user's guess currect or not, and do the task
      checkResponse(guess!);

      //For the next question or the same question.
      print("Enter your answer (-1 to exit):");
      guess = int.parse(stdin.readLineSync()!); //input.nextInt();
    } // end while
  } // end method

  // prints a new question and stores the corresponding answer
  void creatQuestion()
  {
    // get two random numbers between 0 and 9
    int digit1 = randomNumbers.nextInt(10);
    int digit2 = randomNumbers.nextInt(10);

    //store the currect answer
    answer = digit1 * digit2;
    questionsCounter++; // add one to the questions counter
    // display the question
    print("How much is $digit1 times $digit2?");  //System.out.printf( "How much is %d times %d?\n", digit1, digit2 );
  } // end method createQuestion

  // checks if the user answered correctly
  void checkResponse(int guess)
  {
    //If the user's answer is incurrect:
    if( guess != answer && guess != -1){
      questionsCounter++; // add one to the questions counter
      createResponce(false); //display a motivation massage
      //the same question will be asked
    }//end if

    //If the user's answer is currect:
    
    else if(guess == answer)
    {
      score++; // add one to the currect answers
      createResponce(true); //display a motivation massage
      creatQuestion();      //ask a new question
    } // end else
  } // end method checkResponse

  //Create a motivation massage with each answer:
  void createResponce(bool isTrue){
    //If the guess was currect display randomlly one of:
    if(isTrue){
      switch(randomNumbers.nextInt(4)){
        case 0: print("Very good!");
        case 1: print("Excellent!");
        case 2: print("Nice work!");
        case 3: print("Keep up the good work!");
      }//switch
    }//if

    //If the guess was incurrect display randomlly one of:
    else{
      switch(randomNumbers.nextInt(4)){
        case 0: print("No. Please try again.");
        case 1: print("Wrong. Try once more.");
        case 2: print("Don't give up!");
        case 3: print("No. Keep trying.");
      }//switch
    }//else
  }// end method createResponce

  //display the score and restart the test
  calucatePercentage(int guess){
    //checkResponse without asking another question
    //If the last guess is incurrect:
    if( guess != answer && guess != -1){
      //questionsCounter++; // add one to the questions counter
      createResponce(false); //display a motivation massage
      //the same question will be asked
    }//end if

    //If the user's answer is currect:
    
    else if(guess == answer)
    {
      score++; // add one to the currect answers
      //questionsCounter++; // add one to the questions counter
      createResponce(true); //display a motivation massage
      //creatQuestion();      //ask a new question
    } // end else

    //display the score
    print("You scored a ${score*10}");
    //if the percentage < 75, ask the user to ask help.
    if(score<7.5){
      print("Please ask your instructor for extra help");
      print('');
    }// end if
    //Restart the test
    score = 0; //Reset the score
    questionsCounter = 0; //Reser the questionsCounter
    creatQuestion();
  }//calucatePercentage
} // end class Multiply