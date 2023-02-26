import 'dart:io';

void main(List<String> args) {
  var length = 5;
  for (var i = 1; i <= length; i++) {
    for (var j = 1; j <= i - 1; j++) {
      stdout.write(" ");
    }
    for (var j = length; j >= i; j--) {
      stdout.write("0 ");
    }
    stdout.write("\n");
  }
  for (var i = 2; i <= length; i++) {
    for (var j = 1; j <= (length - i); j++) {
      stdout.write(" ");
    }
    for (var j = 1; j <= i; j++) {
      stdout.write('0 ');
    }
    stdout.write('\n');
  }
}