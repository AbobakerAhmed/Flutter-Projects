//Date: 27th of July
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

/*
  How to conver between List - Map - Set
*/

void main(){
  List list = [1,2,3];
  Set set = {4,5,6};
  Map map = { 'A':7, 'B':8, 'C':9 };

  // List to Set
  print("list after convert it to Set: ${list.toSet()}");

  // Set to List
  print("set after convert it to List: ${set.toList()}");

  // List to Map
  Map map2 = {};
  list.forEach((num){ map2.addAll({num:(num+1)});});
  print("list after convert it to map: $map2");
  
  // Map to list
  map.forEach((key,value){ list.addAll([key,value]);});
  print("map after convert it to list: $list");

  // Set to Map
  set.forEach((element){ map2.addAll({ element+10:(element-2)});});
  print("set after convert it to Map: $map2");

  // Map to Set
  map.forEach((key,value){ set.addAll([key,value]);});
  print("map after convert it to Set: $map");
}//main