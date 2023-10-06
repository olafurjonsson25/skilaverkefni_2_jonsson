import 'dart:io';

void main(){

    int sum = 0;

    for (int i = 1; i <= 10; i++) {
        sum += i;
        print("Current number: $i");
        print("Current sum: $sum");
    }

    print("Final sum: $sum");


}
