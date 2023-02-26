//Tugas Looping
//1. Buatlah sebuah piramid bintang

import "dart:io";

void main(List<String> args) {
  var length = 10;
  for (var i = 1; i <= length; i++) {
    for (var j = 1; j <= (length - i); j++) {
      stdout.write(" ");
    }
    for (var j = 1; j <= i; j++) {
      stdout.write('* ');
    }
    stdout.write('\n');
  }
}

