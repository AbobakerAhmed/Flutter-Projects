// Date: 29th of July 2024
// Abobaekr Ahmed Khidir Hassan

// Project 1: Multiply.dart //.java
// Program generates single digit multiplication problems
import 'dart:io'; //import java.util.*;
import 'dart:math'; // to use Random()

class Multiply1 {
  Random randomNumbers = new Random();
  int? answer; // the correct answer
  // ask the user to answer multiplication problems
  void quiz() {
    //Scanner input = new Scanner( System.in );

    int? guess; // the user's guess

    creatQuestion();

    print("Enter your answer (-1 to exit):"); //System.out.println( );
    guess = int.parse(stdin.readLineSync()!); //input.nextInt();

    while (guess != -1) {
      /* write code to call the method to check the user's answer */
      checkResponse(guess!);
      print("Enter your answer (-1 to exit):"); //System.out.println(  );
      guess = int.parse(stdin.readLineSync()!); //input.nextInt();
    } // end while
  } // end method

  // prints a new question and stores the corresponding answer
  void creatQuestion() {
    // get two random numbers between 0 and 9
    int digit1 = randomNumbers.nextInt(9);
    int digit2 = randomNumbers.nextInt(9);

    answer = digit1 * digit2;
    print(
        "How much is $digit1 times $digit2?"); //System.out.printf( "How much is %d times %d?\n", digit1, digit2 );
  } // end method createQuestion

  // checks if the user answered correctly
  void checkResponse(int guess) {
    if (guess != answer && guess != -1) {
      print("No. Please try again.");
    } else if (guess == answer) {
      print("Very Good!"); //System.out.println( "Very Good!" );
      creatQuestion();
    } // end else
  } // end method checkResponse
} // end class Multiply
