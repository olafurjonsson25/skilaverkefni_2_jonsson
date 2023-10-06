import 'dart:io';


void main() {
  // Prompt the user to enter a number
  print("Enter a number: ");
  String? userInput = stdin.readLineSync();

  // Check if the input is null or empty
  if (userInput == null || userInput.isEmpty) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  // Parse the input to an integer
  int? number = int.tryParse(userInput);

  // Check if the parsing was successful
  if (number == null) {
    print("Invalid input. Please enter a valid number.");
    return;
  }

  // Print the multiplication table for the given number from 1 to 10
  print("Multiplication table for $number:");

  for (int i = 1; i <= 10; i++) {
    int result = number * i;
    print("$number x $i = $result");
  }
}






