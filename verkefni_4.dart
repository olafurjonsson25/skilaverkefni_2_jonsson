import 'dart:io';

void main() {
  // Prompt the user to enter a integer
  print("Enter an integer : ");
  String? userInput = stdin.readLineSync();

  // Try to parse the input as an integer
  int? number = int.tryParse(userInput!);

  // Check if the input is a valid number
  if (number == null) {
    print("Invalid input. Please enter a valid integer.");
    return;
  }

  // Initialize a variable to count the digits
  int digitCount = 0;

  // Handle the case of zero separately
  if (number == 0) {
    digitCount = 1;
  } else {
    // Count the digits using a loop
    int tempNumber = number.abs();
    while (tempNumber != 0) {
      digitCount++;
      tempNumber ~/= 10; //
    }
  }


  print("Number of digits: $digitCount");
}






