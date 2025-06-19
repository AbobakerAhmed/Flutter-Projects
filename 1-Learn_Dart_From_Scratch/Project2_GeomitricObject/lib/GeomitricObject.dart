//Date: 29th of July 2024

/*
  The super class GeomiticObject in dart
*/

abstract class GeomitricObject{
  // private variables:
  String _color = "white";
  bool _isFilled = false;
  DateTime _creationDate = new DateTime.now();

  // setters
  void setColor(String color){ this._color = color; }
  void setIsFilled(bool isFilled){ this._isFilled = isFilled; }
  
  // getters
  String getColor(){ return this._color; }
  bool getIsFilled(){ return this._isFilled; }
  DateTime getCreationDate(){ return this._creationDate; }

  // toString
  String toString(){
    return "color is: ${this._color}, and the filled statuce is: ${this._isFilled}\ncreated in ${this._creationDate}";
  }//toString

}//GeomitricObject