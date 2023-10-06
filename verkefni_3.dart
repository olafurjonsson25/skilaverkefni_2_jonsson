import 'dart:io';

void main() {
  int sum = 0;
  int count = 5;

  // Read 5 numbers from the user
  for (int i = 0; i < count; i++) {
    print("Enter number ${i + 1}: ");
    String? userInput = stdin.readLineSync();
    int? number = int.tryParse(userInput!);

    // Check if the input is a valid number
    if (number == null) {
      print("Invalid input. Please enter a valid number.");
      i--; // Decrement i to allow the user to re-enter the number
      continue;
    }

    // Add the valid number to the sum
    sum += number;
  }

  // Calculate the average
  double average = sum / count;

  // Print the sum and average
  print("Sum of the numbers: $sum");
  print("Average of the numbers: $average");
}
