//Date: 29th of July 2024

/*

*/
import 'GeomitricObject.dart';
import 'dart:math';

class Triangle extends GeomitricObject{
  //variables
  double _side1 = 1;
  double _side2 = 1;
  double _side3 = 1;

  Triangle(double s1, double s2, double s3){
    this._side1 = s1;
    this._side2 = s2;
    this._side3 = s3;
  }//constractor

  // setters
  void setSide1(double s1){ this._side1 = s1; }
  void setSide2(double s2){ this._side2 = s2; }
  void setSide3(double s3){ this._side3 = s3; }

  // getters
  double getSide1(){ return this._side1; }
  double getSide2(){ return this._side2; }
  double getSide3(){ return this._side3; }

  //getArea()
  double getArea(){
    double s = (_side1 + _side2 + _side3)/2;
    return sqrt(s * (s - _side1) * (s - _side2) * (s - _side3));
  }
  //getPerimeter() 
  double getPerimeter(){ return (_side1 + _side2 + _side3);}//getPerimeter 

  //override toString
  @override
  String toString(){
    return "Triangle: side1 = $_side1, side2 = $_side2  side3 = $_side3";
  }
}//Triangle