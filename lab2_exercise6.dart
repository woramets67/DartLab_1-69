import 'dart:math';

void executeOperation(double a, double b, double Function(double, double) operation) {
  var result = operation(a, b);
  print('Result : $result');
}

double triangleArea(double base, double height) => 0.5 * base * height;

double rectangleArea(double width, double height) => width * height;

double cylinderVolume(double diameter, double height) => pi * pow(diameter / 2, 2) * height;

void main() {
  executeOperation(3, 4, triangleArea);
  executeOperation(3, 4, rectangleArea);
  executeOperation(3, 4, cylinderVolume);
}
