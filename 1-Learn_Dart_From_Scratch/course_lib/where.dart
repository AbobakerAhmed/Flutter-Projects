//Date: 28th of July 2024
//Course: Learn Dart from Scratch by eng. Weal Abu Hamza
//Platform: Youtube
//Course Link: https://www.youtube.com/watch?v=6bSP4vazmyw&list=PL93xoMrxRJIutlMCImcV3CYMmjS0MmlWL

void main(){
  List list = [1, 2, 3];
  List newList = list.where((e) => e > 0).toList();
  print(newList);
}//main