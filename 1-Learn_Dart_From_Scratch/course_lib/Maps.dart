//Date: 27th of July 2024
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

void main(){

  //Defined a map
  Map Abobaker = {"Age" : 21, "University" : "UofK", "Faculty" : "FMSI" , "Deprtment" : "CS" , "Level" : 2};

  //Display a map
  print("Abobaker map:\n$Abobaker.\n");

  //Accessing a map
  print("Abobaker is ${Abobaker["Age"]} years old and study in ${Abobaker["University"]} at ${Abobaker["Faculty"]}.\n");

  // forEach
  Abobaker.forEach((key, value) {
    print("Abobaker's $key is $value.");
  },);
  print("");

  //remove
  Abobaker.remove("Age");
  print("Abobaker after removing his age:\n$Abobaker\n");

  //clear
  Abobaker.clear();
  print("Abobaker after clear:\n$Abobaker\n");

  //addAll
  Abobaker.addAll({"Father" : "Ahmed" , "Mother" : "Samyah" , "Brothers" : 4 , "Sisters" : false});
  print("Abobaker Now:\n$Abobaker\n");

  //Nisted maps and lists
  Map test = { 1 : ["1-1", "1-2"] , 2 : { "key1.map2" : "2-1" , "key2.map2" : "2-2"} , 3 : [{"key1.map1.list2":"3-1"}] };
  print("We can incerte a map or list inside of another map or another list like:");
  print(test);
  print("");
}//main